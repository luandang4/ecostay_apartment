class Owner::Services::CreateOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    set_apartment
    validation { return true }
    create_service!
  end

  private

  def set_instance_variables
    %i[
      apartment
      service
      form
    ].each do |v|
      singleton_class.class_eval { attr_reader v }
    end
  end

  def set_apartment
    @apartment = current_user.apartment
  end

  def validation
    attrs   = params.require(:service).permit(Owner::Services::CreateForm.attribute_names)
    @form   = Owner::Services::CreateForm.new(attrs)
    return if form.valid?

    @errors = form.error_message
    yield
  end

  def create_service!
    apartment.services.create!(form.attributes)
  end
end
