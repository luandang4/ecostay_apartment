class CreateDevise < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string     :name
      t.datetime   :time_active
      t.integer    :status
      t.references :room

      t.timestamps
    end
  end
end
