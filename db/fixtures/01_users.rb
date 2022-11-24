User.seed do |u|
  u.phone_number          = '0399715436'
  u.country_code          = '84'
  u.last_name             = 'Dang Van'
  u.first_name            = 'Luan'
  u.address               = '47 Lê Lộ'
  u.district              = 'Sơn Trà'
  u.prefecture            = 'Đà Nẵng'
  u.email                 = 'luandang4@gmail.com'
  u.password              = '123123123'
  u.password_confirmation = '123123123'
end

10.times do
  User.seed do |u|
    u.phone_number          = "09#{Faker::Number.number(digits: 9)}"
    u.country_code          = '84'
    u.last_name             = Faker::Name.last_name
    u.first_name            = Faker::Name.first_name
    u.address               = Faker::Address.street_address
    u.prefecture            = Faker::Address.city
    u.district              = Faker::Address.state
    u.email                 = Faker::Internet.email
    u.password              = '123123123'
    u.password_confirmation = '123123123'
  end
end
