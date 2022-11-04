ActiveAdmin.register User do
  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :phone_number
    column :country_code
    column :sex
    column :birthdate
    column :address
    column :district
    column :prefecture
    column :created_at
    column :updated_at
    actions
  end

  filter :email
  filter :first_name
  filter :last_name
  filter :phone_number

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :first_name
      f.input :last_name
      f.input :phone_number
      f.input :country_code
      f.input :sex
      f.input :birthdate
      f.input :address
      f.input :district
      f.input :prefecture
    end
    f.actions
  end
end
