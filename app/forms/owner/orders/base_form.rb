class Owner::Orders::BaseForm < ApplicationForm

  private

  def self.attribute_names
    %i[ id status ]
  end
end
