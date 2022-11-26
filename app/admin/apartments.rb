ActiveAdmin.register Apartment do
  permit_params :name, :phone_number, :address, :district, :prefecture, :admin_user_id, :user_id

  index do
    selectable_column
    id_column
    column :name
    column :phone_number
    column :address
    column :district
    column :prefecture
    column :admin_user_id if current_admin_user.role.admin?
    column :user_id if current_admin_user.role.admin?
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
      f.input :admin_user_id if current_admin_user.role.admin?
      f.input :user_id if current_admin_user.role.admin?
    end
    f.actions
  end
end
