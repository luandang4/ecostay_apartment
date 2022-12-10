class Owner::Services::UpdateOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    set_service
    build_form_service
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

  def build_form_service
    attrs   = params.require(:service).permit(Owner::Services::UpdateForm.attribute_names)
    @form   = Owner::Services::UpdateForm.new(attrs)
    @errors = form.error_message if @form.invalid?
  end

  def update_service!
    service.update!(form.attributes)
  end
end
