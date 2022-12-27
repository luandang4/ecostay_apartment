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
