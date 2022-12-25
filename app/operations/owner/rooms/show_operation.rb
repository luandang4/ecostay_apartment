class Owner::Rooms::ShowOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    set_room
  end

  private

  def set_instance_variables
    %i[
      room
    ].each do |v|
      singleton_class.class_eval { attr_reader v }
    end
  end

  def set_room
    @room = Room.find(params[:id])
  end
end
