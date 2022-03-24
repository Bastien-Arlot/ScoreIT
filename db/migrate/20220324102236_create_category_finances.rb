class CreateCategoryFinances < ActiveRecord::Migration[5.2]
  def change
    create_table :category_finances do |t|
      t.integer :total_notation_finance
      t.integer :max_notation_finance
      t.integer :total_100_finance
      
      t.timestamps
    end
  end
end
