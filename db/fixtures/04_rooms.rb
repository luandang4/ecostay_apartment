Room.delete_all
apartments = Apartment.all

apartments.each do |apartment|
  Room.seed do |u|
    u.name         = 'Room 1'
    u.status       = 1
    u.apartment_id = apartment.id
  end

  Room.seed do |u|
    u.name         = 'Room 2'
    u.status       = 1
    u.apartment_id = apartment.id
  end

  Room.seed do |u|
    u.name         = 'Room 3'
    u.status       = 1
    u.apartment_id = apartment.id
  end

  Room.seed do |u|
    u.name         = 'Room 4'
    u.status       = 0
    u.apartment_id = apartment.id
  end

  Room.seed do |u|
    u.name         = 'Room 5'
    u.status       = 0
    u.apartment_id = apartment.id
  end

  Room.seed do |u|
    u.name         = 'Room 6'
    u.status       = 0
    u.apartment_id = apartment.id
  end
end
