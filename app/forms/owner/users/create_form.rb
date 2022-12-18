class Owner::Users::CreateForm < Owner::Users::BaseForm
  validates :password, presence: { message: "Password can't be blank!" }
  validates :room_id, presence: { message: "Room id can't be blank!" }
end
