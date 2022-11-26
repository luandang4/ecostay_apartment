class User < ApplicationRecord
  extend Enumerize
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_commit :add_default_avatar, on: %i[create update]

  has_one_attached :avatar
  has_one :apartment
  belongs_to :room, optional: true

  enumerize :role, in: { no_role: 0, renter: 1, owner: 2 }

  def avatar_thumbnail
    avatar.variant(resize: "36x36!").processed if avatar.attached?
  end

  private

  def add_default_avatar
    unless avatar.attached?
      avatar.attach(
        io: File.open(
          Rails.root.join(
            'app', 'assets', 'images', 'user_avatar.jpg'
          )
        ),
        filename: 'user_avatar.jpg',
        content_type: 'image/jpg'
      )
    end
  end
end
