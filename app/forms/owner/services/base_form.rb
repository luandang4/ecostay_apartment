class Owner::Services::BaseForm < ApplicationForm
  validates :name, presence: { message: "Name can't be blank!" }
  validates :service_type, presence: { message: "Service type can't be blank!" }
  validates :unit, presence: { message: "Unit can't be blank!" }
  validates :price, presence: { message: "Price can't be blank!" }

  private

  def self.attribute_names
    %i[ id name service_type unit price ]
  end
end
