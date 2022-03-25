class CreateAnswerFinances < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_finances do |t|
      t.integer :answer_finance_1
      t.integer :answer_finance_2
      t.integer :answer_finance_3
      t.integer :answer_finance_4
      t.integer :answer_finance_5

      t.timestamps
    end
  end
end
