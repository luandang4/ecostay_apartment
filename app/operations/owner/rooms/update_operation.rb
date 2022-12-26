class Owner::Rooms::UpdateOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    set_room
    set_service
    set_services
    set_service_room
    set_btn
  end

  private

  def set_instance_variables
    %i[
      service
      services
      room
      btn
    ].each do |v|
      singleton_class.class_eval { attr_reader v }
    end
  end

  def set_room
    @room = Room.find(params[:id])
  end

  def set_service
    @service = Service.find(params[:service_id])
  end

  def set_service_room
    if params[:btn] == "add"
      room.service_rooms.create(service_id: service.id)
    else
      room.service_rooms.find_by(service_id: service.id).delete
    end
  end

  def set_services
    @services = room.apartment.services
  end

  def set_btn
    @btn = params[:btn]
  end
end
