Order.delete_all

rooms = Room.where(status: 1)
rooms.each do |room|
  room.orders.create()
end