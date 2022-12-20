class Device < ApplicationRecord
  extend Enumerize
  enumerize :status, in: { off: 0, on: 1 }

  belongs_to :room
end
