Order.delete_all

rooms = Room.where(status: 1)
rooms.each do |room|
  service_room = room.service_rooms
  if service_room.present?

    amout_service = 0
  if service_room.present?
    service_room.each do |service|
      id = service.service_id
      amout_service += Service.find(id).price
    end
  end

    room.orders.create(
      group_user_id:   room.group_user.id,
      sum:             amout_service
    )
  end
end
