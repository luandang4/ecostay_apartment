class Owner::Rooms::BaseForm < ApplicationForm
  validates :name, presence: true
  validates :status, presence: true

  private

  def self.attribute_names
    %i[ name status notes ]
  end
end
