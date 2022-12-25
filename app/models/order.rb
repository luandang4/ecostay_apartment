class Order < ApplicationRecord
  extend Enumerize

  enumerize :status, in: { unpaid: 0, paid: 1 }
  belongs_to :room
  belongs_to :group_user
end
