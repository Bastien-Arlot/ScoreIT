class AddForeignKey < ActiveRecord::Migration[5.2]
  def change

    add_reference :startups, :user, foreign_key:true, on_delete: :cascade
    add_reference :scores, :startup, foreign_key:true, on_delete: :cascade

    add_reference :category_teams, :score, foreign_key:true, on_delete: :cascade
    add_reference :answer_teams, :category_team, foreign_key:true, on_delete: :cascade 

    add_reference :category_finances, :score, foreign_key:true, on_delete: :cascade
    add_reference :answer_finances, :category_finance, foreign_key:true, on_delete: :cascade 

    add_reference :category_markets, :score, foreign_key:true, on_delete: :cascade
    add_reference :answer_markets, :category_market, foreign_key:true, on_delete: :cascade

    add_reference :category_offers, :score, foreign_key:true, on_delete: :cascade
    add_reference :answer_offers, :category_offer, foreign_key:true, on_delete: :cascade

    add_reference :category_innovations, :score, foreign_key:true, on_delete: :cascade
    add_reference :answer_innovations, :category_innovation, foreign_key:true, on_delete: :cascade

    add_reference :category_strategies, :score, foreign_key:true, on_delete: :cascade
    add_reference :answer_strategies, :category_strategy, foreign_key:true, on_delete: :cascade
  end
end
