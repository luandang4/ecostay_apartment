class Device < ApplicationRecord
  extend Enumerize
  enumerize :status, in: { off: 0, on: 1 }

  belongs_to :room

  scope :order_by_created, -> { order(created_at: :asc) }
end
