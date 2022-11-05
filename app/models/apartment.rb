class Apartment < ApplicationRecord
  belongs_to :admin_user
  has_many :services
end
