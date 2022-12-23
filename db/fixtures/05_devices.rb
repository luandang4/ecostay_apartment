Device.delete_all

rooms = User.first.apartment.rooms
rooms.each do |r|
	r.devices.create(name: "TV", status: 0)
	r.devices.create(name: "Air-conditioner", status: 0)
	r.devices.create(name: "Table lamp", status: 0)
	r.devices.create(name: "Room lamp", status: 0)
	r.devices.create(name: "Fan", status: 0)
	r.devices.create(name: "Electric Water Heater", status: 0)
end