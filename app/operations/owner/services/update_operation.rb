class Owner::Services::UpdateOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    set_service
    validation { return true }
    update_service!
  end

  private

  def set_instance_variables
    %i[
      service
      form
    ].each do |v|
      singleton_class.class_eval { attr_reader v }
    end
  end

  def set_service
    @service = Service.find(params[:id])
  end

  def validation
    attrs   = params[:service].present? ?
              params.require(:service).permit(Owner::Services::UpdateForm.attribute_names) :
              params.require(:owner_services_update_form).permit(Owner::Services::UpdateForm.attribute_names)
    @form   = Owner::Services::UpdateForm.new(attrs.merge(id: service.id))

    return if form.valid?

    yield
  end

  def update_service!
    service.update!(form.attributes)
  end
end
