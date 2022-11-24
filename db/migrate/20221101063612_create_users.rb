class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string   :email, null: false
      t.string   :first_name
      t.string   :last_name
      t.string   :password_digest
      t.string   :phone_number
      t.string   :country_code
      t.integer  :sex, default: 1
      t.string   :birthdate
      t.integer  :role, null: false, default: 0

      t.string   :address
      t.string   :district
      t.string   :prefecture
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
