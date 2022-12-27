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
