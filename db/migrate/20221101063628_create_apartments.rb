class CreateApartments < ActiveRecord::Migration[6.1]
  def change
    create_table :apartments do |t|
      t.string     :name
      t.string     :phone_number
      t.string     :address
      t.string     :district
      t.string     :prefecture
      t.datetime   :deleted_at
      t.references :admin_user
      t.timestamps
    end
  end
end
