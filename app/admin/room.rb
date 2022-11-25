ActiveAdmin.register Room do
  permit_params :name, :status, :notes

  index do
    selectable_column
    id_column
    column :name
    column :status
    column :notes
    column :apartment_id
    actions
  end

  show title: proc { |room| room.name } do
    attributes_table do
    row :name
    row :status
    row :notes
    row :apartment_id
    row :deleted_at
    row :created_at
    row :updated_at
    end
  end

  filter :name
  filter :status
  filter :notes
  filter :apartment_id

  form do |f|
    f.inputs do
      f.input :name
      f.input :status
      f.input :notes
      f.input :apartment_id
    end
    f.actions
  end
end
