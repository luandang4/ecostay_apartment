class Room < ApplicationRecord
  extend Enumerize
  enumerize :status, in: { available: 0, leased: 1 }

  belongs_to :apartment
  has_many :users
  has_many :devices
end
