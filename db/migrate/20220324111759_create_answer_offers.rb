class CreateAnswerOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_offers do |t|
      t.integer :answer_offer_1
      t.integer :answer_offer_2
      t.integer :answer_offer_3
      t.integer :answer_offer_4
      t.integer :answer_offer_5
      t.integer :answer_offer_6
      t.integer :answer_offer_7
      t.integer :answer_offer_8

      t.timestamps
    end
  end
end
