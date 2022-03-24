class CreateAnswerTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_teams do |t|
      t.integer :answer_team_1
      t.integer :answer_team_2
      t.integer :answer_team_3
      t.integer :answer_team_4
      t.integer :answer_team_5
      t.integer :answer_team_6
      t.integer :answer_team_7
      t.integer :answer_team_8
      t.integer :answer_team_9
      t.integer :answer_team_10

      t.timestamps
    end
  end
end
