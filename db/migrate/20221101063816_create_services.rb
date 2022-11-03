class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string   :name
      t.string   :service_type
      t.float    :price
      t.string   :unit
      t.datetime :deleted_at

      t.integer  :apartment_id
      t.timestamps
    end
  end
end
