class CreateAnswerStrategies < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_strategies do |t|
      t.integer :answer_strategy_1
      t.integer :answer_strategy_2
      t.integer :answer_strategy_3
      t.integer :answer_strategy_4
      t.integer :answer_strategy_5
      t.integer :answer_strategy_6
      t.integer :answer_strategy_7
      t.integer :answer_strategy_8
      t.integer :answer_strategy_9
      t.integer :answer_strategy_10
      t.integer :answer_strategy_11

      t.timestamps
    end
  end
end
