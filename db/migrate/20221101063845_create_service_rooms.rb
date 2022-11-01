class CreateServiceRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :service_rooms do |t|
      t.datetime   :deleted_at
      t.references :service
      t.references :room
      t.timestamps
    end
  end
end
