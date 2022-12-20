class Renter::Home::IndexOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    # set_devices
  end

  private

  def set_instance_variables
    %i[
      devices
    ].each do |v|
      singleton_class.class_eval { attr_reader v }
    end
  end

  def set_devices
    @devices = current_user.room.devices
  end
end
