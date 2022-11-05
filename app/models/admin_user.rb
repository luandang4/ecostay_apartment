class AdminUser < ApplicationRecord
  extend Enumerize
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  enumerize :role, in: { admin: 0, house_owner: 1 }

  has_many :apartments
  has_many :services, through: :apartments
end
