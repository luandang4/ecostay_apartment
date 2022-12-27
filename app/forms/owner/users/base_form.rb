class Owner::Users::BaseForm < ApplicationForm
  validates :email,        presence:   { message: "Email can't be blank!" }
  validates :email,        format:     { with: VALID_EMAIL_REGEX, message: "Incorrect email format" }
  validates :name,         presence:   { message: "Name can't be blank!" }
  validates :phone_number, presence:   { message: "Phone numbers can't be blank!" }
  validates :phone_number, format:     { with: VALID_PHONE_REGEX, message: "Incorrectly formatted phone numbers" }
  validates :room_id,      presence:   { message: "Room id can't be blank!" }

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
