class Owner::Devices::CreateOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    set_apartment
    validation { return true }
    create_device!
  end

  private

  def set_instance_variables
    %i[
      apartment
      device
      form
    ].each do |v|
      singleton_class.class_eval { attr_reader v }
    end
  end

  def set_apartment
    @apartment = current_user.apartment
  end

  def validation
    attrs   = params[:owner_devices_new_form].present? ?
              params.require(:owner_devices_new_form).permit(Owner::Devices::CreateForm.attribute_names) :
              params.require(:owner_devices_create_form).permit(Owner::Devices::CreateForm.attribute_names)

    @form   = Owner::Devices::CreateForm.new(attrs.merge(status: 0))
    return if form.valid?

    yield
  end

  def create_device!
    Device.create!(form.attributes)
  end
end
