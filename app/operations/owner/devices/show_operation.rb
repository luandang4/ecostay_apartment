class Owner::Devices::ShowOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    set_device
  end

  private

  def set_instance_variables
    %i[
      device
    ].each do |v|
      singleton_class.class_eval { attr_reader v }
    end
  end

  def set_device
    @device = Device.find(params[:id])
  end
end
