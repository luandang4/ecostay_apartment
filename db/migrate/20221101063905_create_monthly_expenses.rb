class CreateMonthlyExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :monthly_expenses do |t|
      t.string     :name
      t.datetime   :report_date
      t.float      :price
      t.float      :payment
      t.datetime   :deleted_at
      t.integer    :status, default: :unpaid

      t.references :room
      t.references :user
      t.timestamps
    end
  end
end
