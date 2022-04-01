class CreateCategoryMarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :category_markets do |t|
      t.integer :total_rate_market
      t.integer :max_rate_market
      t.integer :total_100_market
      t.timestamps
    end
  end
end
