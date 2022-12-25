class Owner::Orders::BaseForm < ApplicationForm

  private

  def self.attribute_names
    %i[ id status amout_service room_id price ]
  end
end
