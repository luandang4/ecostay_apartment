class Owner::Devices::BaseForm < ApplicationForm
  validates :name, presence: { message: "Name can't be blank!" }
  validates :room_id, presence: { message: "Room id can't be blank!" }

  private

  def self.attribute_names
    %i[ id name time_active status room_id ]
  end
end
