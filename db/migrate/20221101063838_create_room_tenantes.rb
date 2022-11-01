class CreateRoomTenantes < ActiveRecord::Migration[6.1]
  def change
    create_table :room_tenantes do |t|
      t.boolean    :is_tenante, default: true
      t.datetime   :rental_date
      t.datetime   :deleted_at
      t.references :account
      t.references :room
      t.timestamps
    end
  end
end
