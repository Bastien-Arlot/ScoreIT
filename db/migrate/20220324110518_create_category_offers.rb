class CreateCategoryOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :category_offers do |t|
      t.integer :total_notation_offer
      t.integer :max_notation_offer
      t.integer :total_100_offer

      t.timestamps
    end
  end
end
