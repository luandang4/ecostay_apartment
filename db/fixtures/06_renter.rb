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
