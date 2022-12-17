class Owner::Users::UpdateForm < Owner::Users::BaseForm
  validates :country_code, presence: { message: "Country code can't be blank!" }
  validates :sex, presence: { message: "Gender can't be blank!" }
  validates :birthdate, presence: { message: "Birthdate can't be blank!" }
  validates :role, presence: { message: "Role can't be blank!" }
  validates :address, presence: { message: "Address can't be blank!" }
  validates :district, presence: { message: "District can't be blank!" }
  validates :prefecture, presence: { message: "Prefecture can't be blank!" }
end
