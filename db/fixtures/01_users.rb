AdminUser.delete_all
User.delete_all

AdminUser.seed do |u|
  u.email                 = 'admin@gmail.com'
  u.role                  = 1
  u.password              = '123123123'
  u.password_confirmation = '123123123'
end

User.seed do |u|
  u.phone_number          = '0399715436'
  u.country_code          = '84'
  u.name                  = 'Luan Dang'
  u.address               = '55 Nam Cao'
  u.district              = 'Hòa Khánh Nam'
  u.prefecture            = 'Đà Nẵng'
  u.email                 = 'luandang4@gmail.com'
  u.password              = '123123123'
  u.password_confirmation = '123123123'
  u.role                  = 2
end

User.seed do |u|
  u.phone_number          = '0904605070'
  u.country_code          = '84'
  u.name                  = 'Quoc Le'
  u.address               = '47 Lê Lộ'
  u.district              = 'Sơn Trà'
  u.prefecture            = 'Đà Nẵng'
  u.email                 = 'quocle@gmail.com'
  u.password              = '123123123'
  u.password_confirmation = '123123123'
  u.role                  = 2
end

User.seed do |u|
  u.phone_number          = '0903468567'
  u.country_code          = '84'
  u.name                  = 'Long Vo'
  u.address               = '56 Phạm Cự Lượng'
  u.district              = 'Sơn Trà'
  u.prefecture            = 'Đà Nẵng'
  u.email                 = 'longvo@gmail.com'
  u.password              = '123123123'
  u.password_confirmation = '123123123'
  u.role                  = 2
end

Apartment.delete_all
first_admin = AdminUser.first

Apartment.seed do |u|
  u.name          = 'XomTro Apartment',
  u.phone_number  = '0399715436',
  u.address       = '55 Nam Cao',
  u.district      = 'Hòa Khánh Nam',
  u.prefecture    = 'Đà Nẵng',
  u.admin_user_id = first_admin.id
  u.user_id       = User.first.id
end

Apartment.seed do |u|
  u.name          = 'SV Apartment',
  u.phone_number  = '0904605070',
  u.address       = '47 Lê Lộ',
  u.district      = 'Sơn Trà',
  u.prefecture    = 'Đà Nẵng',
  u.admin_user_id = first_admin.id
  u.user_id       = User.second.id
end

Apartment.seed do |u|
  u.name          = 'LongVo Apartment',
  u.phone_number  = '0903468567',
  u.address       = '56 Phạm Cự Lượng',
  u.district      = 'Sơn Trà',
  u.prefecture    = 'Đà Nẵng',
  u.admin_user_id = first_admin.id
  u.user_id       = User.third.id
end

Service.delete_all

apartments = Apartment.all

apartments.each do |apartment|
  Service.seed do |u|
    u.name         = 'Tiền thuê căn hộ loại 1'
    u.service_type = 'room'
    u.price        = 1_000_000
    u.unit         = 'Phòng'
    u.apartment_id = apartment.id
  end

  Service.seed do |u|
    u.name         = 'Tiền thuê căn hộ loại 2'
    u.service_type = 'room'
    u.price        = 1_500_000
    u.unit         = 'Phòng'
    u.apartment_id = apartment.id
  end

  Service.seed do |u|
    u.name         = 'Chi phí 1 chữ điện'
    u.service_type = 'electric'
    u.price        = 3_000
    u.unit         = 'Chữ điện'
    u.apartment_id = apartment.id
  end

  Service.seed do |u|
    u.name         = 'Chi phí 1 chữ nước'
    u.service_type = 'water'
    u.price        = 5_000
    u.unit         = 'Chữ nước'
    u.apartment_id = apartment.id
  end

  Service.seed do |u|
    u.name         = 'Internet'
    u.service_type = 'internet'
    u.price        = 35_000
    u.unit         = '1 lần dùng'
    u.apartment_id = apartment.id
  end
end

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

rooms = Room.all

rooms.each do |room|
  GroupUser.seed do |u|
    u.room_id = room.id
  end
end

User.seed do |u|
  u.phone_number          = '0399475898'
  u.country_code          = '84'
  u.name                  = 'Phuong Thanh'
  u.address               = '15 Xuân Diệu'
  u.district              = 'Thị Trấn Nghèn'
  u.prefecture            = 'Thị Xã Hồng Lĩnh'
  u.email                 = 'thanh@gmail.com'
  u.password              = '123123123'
  u.password_confirmation = '123123123'
  u.role                  = 1
  u.room_id               = Apartment.first.rooms.first.id
  u.group_user_id         = Apartment.first.rooms.first.group_user.id
end

User.seed do |u|
  u.phone_number          = '0399475898'
  u.country_code          = '84'
  u.name                  = 'Hoang Duong'
  u.address               = '45 Xuân Diệu'
  u.district              = 'Thị Trấn Nghèn'
  u.prefecture            = 'Thị Xã Hồng Lĩnh'
  u.email                 = 'duong@gmail.com'
  u.password              = '123123123'
  u.password_confirmation = '123123123'
  u.role                  = 1
  u.room_id               = Apartment.first.rooms.second.id
  u.group_user_id         = Apartment.first.rooms.second.group_user.id
end

User.seed do |u|
  u.phone_number          = '0399456789'
  u.country_code          = '84'
  u.name                  = 'Tran Anh'
  u.address               = '23 Hùng Vương'
  u.district              = 'Cẩm Trung'
  u.prefecture            = 'Cẩm Xuyên'
  u.email                 = 'anh18@gmail.com'
  u.password              = '123123123'
  u.password_confirmation = '123123123'
  u.role                  = 1
  u.room_id               = Apartment.first.rooms.third.id
  u.group_user_id         = Apartment.first.rooms.third.group_user.id
end

User.seed do |u|
  u.phone_number          = '0399345555'
  u.country_code          = '84'
  u.name                  = 'Duy Khanh'
  u.address               = '100 Hùng Vương'
  u.district              = 'Cẩm Trung'
  u.prefecture            = 'Cẩm Xuyên'
  u.email                 = 'khanh@gmail.com'
  u.password              = '123123123'
  u.password_confirmation = '123123123'
  u.role                  = 1
  u.room_id               = Apartment.second.rooms.first.id
  u.group_user_id         = Apartment.second.rooms.first.group_user.id
end

User.seed do |u|
  u.phone_number          = '0399346666'
  u.country_code          = '84'
  u.name                  = 'Dinh An'
  u.address               = '123 Hùng Vương'
  u.district              = 'Cẩm Trung'
  u.prefecture            = 'Cẩm Xuyên'
  u.email                 = 'dinhan@gmail.com'
  u.password              = '123123123'
  u.password_confirmation = '123123123'
  u.role                  = 1
  u.room_id               = Apartment.second.rooms.second.id
  u.group_user_id         = Apartment.second.rooms.second.group_user.id
end

User.seed do |u|
  u.phone_number          = '0399348888'
  u.country_code          = '84'
  u.name                  = 'Han Du'
  u.address               = '56 Hùng Vương'
  u.district              = 'Cẩm Trung'
  u.prefecture            = 'Cẩm Xuyên'
  u.email                 = 'handu@gmail.com'
  u.password              = '123123123'
  u.password_confirmation = '123123123'
  u.role                  = 1
  u.room_id               = Apartment.second.rooms.third.id
  u.group_user_id         = Apartment.second.rooms.third.group_user.id
end

User.seed do |u|
  u.phone_number          = '0399349999'
  u.country_code          = '84'
  u.name                  = 'Xuan Dai'
  u.address               = '67 Phung Hung'
  u.district              = 'Cẩm Hưng'
  u.prefecture            = 'Cẩm Xuyên'
  u.email                 = 'xuandai@gmail.com'
  u.password              = '123123123'
  u.password_confirmation = '123123123'
  u.role                  = 1
  u.room_id               = Apartment.third.rooms.first.id
  u.group_user_id         = Apartment.third.rooms.first.group_user.id
end

User.seed do |u|
  u.phone_number          = '0399341111'
  u.country_code          = '84'
  u.name                  = 'Hoang Thai'
  u.address               = '78 Phung Hung'
  u.district              = 'Cẩm Hưng'
  u.prefecture            = 'Cẩm Xuyên'
  u.email                 = 'thai@gmail.com'
  u.password              = '123123123'
  u.password_confirmation = '123123123'
  u.role                  = 1
  u.room_id               = Apartment.third.rooms.second.id
  u.group_user_id         = Apartment.third.rooms.second.group_user.id
end

User.seed do |u|
  u.phone_number          = '0399342222'
  u.country_code          = '84'
  u.name                  = 'Ngoc Tra'
  u.address               = '31 Phú Thọ'
  u.district              = 'Cẩm Lạc'
  u.prefecture            = 'Cẩm Xuyên'
  u.email                 = 'ngoctra@gmail.com'
  u.password              = '123123123'
  u.password_confirmation = '123123123'
  u.role                  = 1
  u.room_id               = Apartment.third.rooms.third.id
  u.group_user_id         = Apartment.third.rooms.third.group_user.id
end

Device.delete_all

rooms = Room.all
rooms.each do |r|
	r.devices.create(name: "TV", status: 0)
	r.devices.create(name: "Air-conditioner", status: 0)
	r.devices.create(name: "Table lamp", status: 0)
	r.devices.create(name: "Room lamp", status: 0)
	r.devices.create(name: "Fan", status: 0)
	r.devices.create(name: "Electric Water Heater", status: 0)
end

