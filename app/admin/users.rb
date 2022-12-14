ActiveAdmin.register User do
  permit_params :email, :name, :password, :password_confirmation, :phone_number, :country_code, :sex, :birthdate, :address, :district, :prefecture, :role, :room_id

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :role
    column :phone_number
    column :sex
    column :birthdate
    column :address
    column :district
    column :prefecture
    column :room_id
    actions
  end

  show title: proc { |user| user.name } do
    attributes_table do
    row :email
    row :name
    row :role
    row :phone_number
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
  filter :name
  filter :phone_number

  form do |f|
    f.inputs do
      f.input :email
      # f.input :password
      # f.input :password_confirmation
      f.input :role
      f.input :name
      f.input :phone_number
      f.input :sex
      f.input :birthdate, as: :date_time_picker, datepicker_options: { min_date: "1920-1-1", max_date: "+80Y" }
      f.input :address
      f.input :district
      f.input :prefecture
      f.input :room_id
    end
    f.actions
  end
end
