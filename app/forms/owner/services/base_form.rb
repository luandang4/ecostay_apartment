class Owner::Services::BaseForm < ApplicationForm
  validates :name, presence: true
  validates :service_type, presence: true
  validates :unit, presence: true
  validates :price, presence: true

  private

  def self.attribute_names
    %i[ name service_type unit price ]
  end
end
