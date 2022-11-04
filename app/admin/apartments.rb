ActiveAdmin.register Apartment do
  index do
    selectable_column
    id_column
    column :name
    column :phone_number
    column :address
    column :district
    column :prefecture
    column :created_at
    column :updated_at
    column :user
    actions
  end

  filter :name
  filter :phone_number
  filter :address

  form do |f|
    f.inputs do
      f.input :name
      f.input :phone_number
      f.input :address
      f.input :district
      f.input :prefecture
    end
    f.actions
  end
end
