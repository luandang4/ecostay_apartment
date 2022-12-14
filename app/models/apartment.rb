class Apartment < ApplicationRecord
  belongs_to :admin_user
  belongs_to :user
  has_many :services
  has_many :rooms
  has_many :users, through: :rooms
  has_many :devices, through: :rooms
  has_many :orders, through: :rooms
end
