class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string     :name
      t.integer    :status, default: 0
      t.text       :notes
      t.datetime   :deleted_at

      t.references :apartment
      t.references :account
      t.timestamps
    end
  end
end
