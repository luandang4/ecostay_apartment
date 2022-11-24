ActiveAdmin.register User do
  permit_params :email, :first_name, :last_name, :phone_number, :country_code, :sex, :birthdate, :address, :district, :prefecture

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

  show title: proc { |user| "#{user.first_name} #{user.last_name}" } do
    attributes_table do
    row :email
    row :first_name
    row :last_name
    row :phone_number
    row :country_code
    row :sex
    row :birthdate
    row :address
    row :district
    row :prefecture
    row :created_at
    row :updated_at
    end
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
      f.input :role
      f.input :prefecture
    end
    f.actions
  end
end
