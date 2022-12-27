class Renter::Orders::ShowOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    set_order
    set_room
    set_serivces
    set_amout_service
    set_month
  end

  private

  def set_instance_variables
    %i[
      order
      room
      services
      amout_service
      month
    ].each do |v|
      singleton_class.class_eval { attr_reader v }
    end
  end

  def set_order
    @order = Order.find(params[:id])
  end

  def set_room
    @room = Room.find(order.room_id)
  end

  def set_serivces
    service_rooms = room.service_rooms
    ids = service_rooms.pluck(:service_id)
    @services = Service.find(ids)
  end

  def set_amout_service
    prices = services.pluck(:price)
    @amout_service = prices.inject(0, :+)
  end

  def set_month
    @month = order.created_at
  end
end
