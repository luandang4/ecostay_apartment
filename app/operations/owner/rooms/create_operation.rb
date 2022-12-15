class Owner::Rooms::CreateOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    set_apartment
    validation { return true }
    create_room!
  end

  private

  def set_instance_variables
    %i[
      apartment
      form
    ].each do |v|
      singleton_class.class_eval { attr_reader v }
    end
  end

  def set_apartment
    @apartment = current_user.apartment
  end

  def validation
    attrs   = params.require(:room).permit(Owner::Rooms::CreateForm.attribute_names)
    @form   = Owner::Rooms::CreateForm.new(attrs)

    return if form.valid?

    @errors = form.error_message
    yield
  end

  def create_room!
    apartment.rooms.create!(form.attributes)
  end
end
