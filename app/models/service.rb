class Service < ApplicationRecord
  belongs_to :apartment
  belongs_to :admin_user, optional: true
  has_many   :service_rooms
end
