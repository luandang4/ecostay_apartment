ActiveAdmin.register Service do
  permit_params :name, :service_type, :price, :unit, :apartment_id

  index do
    selectable_column
    id_column
    column :name
    column :service_type
    column :price
    column :unit
    column :apartment_id
    actions
  end

  filter :name
  filter :service_type
  filter :apartment_id

  form do |f|
    f.inputs do
      f.input :name
      f.input :service_type
      f.input :price
      f.input :unit
      f.input :apartment_id
    end
    f.actions
  end
end
