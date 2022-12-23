class Owner::Orders::CreateOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    set_apartment
    validation { return true }

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
    attrs   = params[:owner_orders_new_form].present? ?
              params.require(:owner_orders_new_form).permit(Owner::Orders::CreateForm.attribute_names) :
              params.require(:owner_orders_create_form).permit(Owner::Orders::CreateForm.attribute_names)

    @form   = Owner::Orders::CreateForm.new(attrs)
    return if form.valid?

    yield
  end

  def create_order!
  end
end
