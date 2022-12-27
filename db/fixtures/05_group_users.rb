rooms = Room.all

rooms.each do |room|
  GroupUser.seed do |u|
    u.room_id = room.id
  end
end
