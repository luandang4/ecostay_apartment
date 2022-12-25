class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer    :status
      t.float      :amout_service
      t.float      :price
      t.float      :sum
      t.datetime   :pay_date
      t.references :service
      t.references :room
      t.references :group_user

      t.timestamps
    end
  end
end
