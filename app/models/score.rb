class Score < ApplicationRecord
  belongs_to :startup

  has_one :category_team, dependent: :destroy
  has_one :answer_team, through: :category_team

  has_one :category_finance, dependent: :destroy
  has_one :answer_finance, through: :category_finance

  has_one :category_market, dependent: :destroy
  has_one :answer_market, through: :category_market

  has_one :category_offer, dependent: :destroy
  has_one :answer_offer, through: :category_offer

  has_one :category_innovation, dependent: :destroy
  has_one :answer_innovation, through: :category_innovation

  has_one :category_strategy, dependent: :destroy
  has_one :answer_strategy, through: :category_strategy

  after_create :create_category_team

  def create_category_team
    @category_team = CategoryTeam.new(
      'score_id' => self.id
    )
    @category_team.save
  end


end
