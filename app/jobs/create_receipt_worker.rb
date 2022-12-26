class CreateReceiptWorker < ActiveJob::Base
  queue_as :default

  def perform(*args)
    rooms = Room.where(status: 1)
    rooms.each do |room|
      service_rooms = room.service_rooms
      room.orders.create(
        group_user_id:   room.group_user.id,
        sum:             amout_service(service_rooms)
      )
    end
  end

  def amout_service(service_room)
    amout_service = 0
    if service_room.present?
      service_room.each do |service|
        id = service.service_id
        amout_service += Service.find(id).price
      end
    end
    amout_service
  end
end
