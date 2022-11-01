first_user = User.first

Apartment.seed do |u|
  u.name         = 'Cô Vân',
  u.phone_number = '0935328949',
  u.address      = 'K7/8 Phạm Cự Lượng',
  u.district     = 'Sơn Trà',
  u.prefecture   = 'Đà Nẵng',
  u.user_id      = first_user.id
end

User.where.not(id: first_user.id).each do |user|
  Apartment.seed do |u|
    u.phone_number = "09#{Faker::Number.number(digits: 9)}",
    u.name         = Faker::Name.name,
    u.address      = Faker::Address.street_address,
    u.district     = Faker::Address.state,
    u.prefecture   = Faker::Address.city,
    u.user_id      = user.id
  end
end
