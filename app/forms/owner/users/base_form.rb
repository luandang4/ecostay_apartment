class Owner::Users::BaseForm < ApplicationForm
  validates :email, presence: { message: "Email can't be blank!" }
  validates :name, presence: { message: "Name can't be blank!" }
  validates :phone_number, presence: { message: "Phone number can't be blank!" }
  validates :room_id, presence: { message: "Room id can't be blank!" }

  private

  def self.attribute_names
    %i[ id
        email
        name
        password
        phone_number
        country_code
        sex
        birthdate
        role
        address
        district
        prefecture
        room_id
        avatar
        created_at
        group_user_id
      ]
  end
end
