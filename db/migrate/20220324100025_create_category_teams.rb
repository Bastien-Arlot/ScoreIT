class CreateCategoryTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :category_teams do |t|
      t.integer :total_notation_team
      t.integer :max_notation_team
      t.integer :total_100_team
      t.timestamps
    end
  end
end
