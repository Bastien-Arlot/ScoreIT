class CreateCategoryInnovations < ActiveRecord::Migration[5.2]
  def change
    create_table :category_innovations do |t|
      t.integer :total_notation_innovation
      t.integer :max_notation_innovation
      t.integer :total_100_innovation
      t.timestamps
    end
  end
end
