class Apartment < ApplicationRecord
  belongs_to :admin_user
  has_many :services
  has_many :rooms
end
