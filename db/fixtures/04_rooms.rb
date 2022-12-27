Room.delete_all
apartments = Apartment.all

apartments.each do |apartment|
  Room.seed do |u|
    u.name         = 'Phòng 1'
    u.status       = 1
    u.apartment_id = apartment.id
  end

  Room.seed do |u|
    u.name         = 'Phòng 2'
    u.status       = 1
    u.apartment_id = apartment.id
  end

  Room.seed do |u|
    u.name         = 'Phòng 3'
    u.status       = 1
    u.apartment_id = apartment.id
  end

  Room.seed do |u|
    u.name         = 'Phòng 4'
    u.status       = 0
    u.apartment_id = apartment.id
  end

  Room.seed do |u|
    u.name         = 'Phòng 5'
    u.status       = 0
    u.apartment_id = apartment.id
  end

  Room.seed do |u|
    u.name         = 'Phòng 6'
    u.status       = 0
    u.apartment_id = apartment.id
  end
end
