class CreateCategoryStrategies < ActiveRecord::Migration[5.2]
  def change
    create_table :category_strategies do |t|
      t.integer :total_rate_strategy
      t.integer :max_rate_strategy
      t.integer :total_100_strategy

      t.timestamps
    end
  end
end
