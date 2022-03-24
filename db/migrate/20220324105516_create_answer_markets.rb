class CreateAnswerMarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_markets do |t|
      t.integer :answer_market_1
      t.integer :answer_market_2
      t.integer :answer_market_3
      t.integer :answer_market_4
      t.integer :answer_market_5
      t.integer :answer_market_6
      t.integer :answer_market_7
      t.integer :answer_market_8

      t.timestamps
    end
  end
end
