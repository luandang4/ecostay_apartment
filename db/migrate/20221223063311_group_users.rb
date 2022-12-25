class GroupUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :group_users do |t|
      t.references :room

      t.timestamps
    end
  end
end
