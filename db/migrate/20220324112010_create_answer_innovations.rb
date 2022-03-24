class CreateAnswerInnovations < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_innovations do |t|
      t.integer :answer_innovation_1
      t.integer :answer_innovation_2
      t.integer :answer_innovation_3
      t.integer :answer_innovation_4
      t.integer :answer_innovation_5
      t.integer :answer_innovation_6
      t.integer :answer_innovation_7
      t.timestamps
    end
  end
end
