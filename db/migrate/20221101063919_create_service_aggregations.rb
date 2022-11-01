class CreateServiceAggregations < ActiveRecord::Migration[6.1]
  def change
    create_table :service_aggregations do |t|
      t.string  :name
      t.integer :service_id
      t.integer :consumption_index
      t.float   :price

      t.timestamps
    end
  end
end
