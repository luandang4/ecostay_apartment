apartments = Apartment.all

apartments.each do |apartment|
  Service.seed do |u|
    u.name         = 'Tiền thuê căn hộ loại 1',
    u.type         = 'room',
    u.price        = 1_000_000,
    u.unit         = 'Phòng',
    u.apartment_id = apartment.id
  end

  Service.seed do |u|
    u.name         = 'Tiền thuê căn hộ loại 2',
    u.type         = 'room',
    u.price        = 1_500_000,
    u.unit         = 'Phòng',
    u.apartment_id = apartment.id
  end

  Service.seed do |u|
    u.name         = 'Tiền thuê căn hộ loại 3',
    u.type         = 'room',
    u.price        = 1_500_000,
    u.unit         = 'Phòng',
    u.apartment_id = apartment.id
  end

  Service.seed do |u|
    u.name         = 'Chi phí 1 chữ điện',
    u.type         = 'electric',
    u.price        = 3_000,
    u.unit         = 'Chữ điện',
    u.apartment_id = apartment.id
  end

  Service.seed do |u|
    u.name         = 'Chi phí 1 chữ nước',
    u.type         = 'water',
    u.price        = 5_000,
    u.unit         = 'Chữ nước',
    u.apartment_id = apartment.id
  end

  Service.seed do |u|
    u.name         = 'Internet',
    u.type         = 'internet',
    u.price        = 35_000,
    u.unit         = '1 lần dùng',
    u.apartment_id = apartment.id
  end
end
