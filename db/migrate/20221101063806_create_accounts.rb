class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string   :email
      t.string   :name
      t.string   :phone_number
      t.string   :country_code
      t.integer  :sex, default: 1
      t.string   :birthdate

      t.string   :address
      t.string   :district
      t.string   :prefecture

      t.string   :identity_card_code
      t.string   :provide_date
      t.string   :place_provide
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
