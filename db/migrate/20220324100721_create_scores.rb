class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.string :name
      t.integer :total
      t.integer :total_max
      t.integer :total_100
      
      t.timestamps
    end
  end
end
