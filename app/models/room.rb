class Room < ApplicationRecord
  belongs_to :apartment
  has_many :users
end
