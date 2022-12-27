class AdminUser < ApplicationRecord
  extend Enumerize
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  enumerize :role, in: { house_owner: 0, admin: 1 }

  has_many :apartments
  has_many :services, through: :apartments

  validates :email, format: { with: VALID_EMAIL_REGEX }
end
