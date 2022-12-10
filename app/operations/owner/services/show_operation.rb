class Owner::Services::ShowOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    set_service
  end

  private

  def set_instance_variables
    %i[
      service
    ].each do |v|
      singleton_class.class_eval { attr_reader v }
    end
  end

  def set_service
    @service = Service.find(params[:id])
  end
end
