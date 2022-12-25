class GroupUser < ApplicationRecord
  has_many :users
  has_many :orders
  belongs_to :room
end
