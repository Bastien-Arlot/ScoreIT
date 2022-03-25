class CategoryInnovation < ApplicationRecord
  belongs_to :score
  has_one :answer_market, dependent: :destroy

  after_update :scoring_total

  def scoring_total
    @innovation = CategoryInnovation.find_by(score_id:self.score_id)
    @market = CategoryMarket.find_by(score_id:self.score_id)
    @team = CategoryTeam.find_by(score_id:self.score_id)
    @score = Score.find(self.score_id)

    if !@market.total_notation_market.nil? && !@team.total_notation_team.nil? && !@innovation.total_notation_innovation.nil?
      @total = @market.total_notation_market + @team.total_notation_team + @innovation.total_notation_innovation
      @total_max = @market.max_notation_market + @team.max_notation_team + @innovation.max_notation_innovation

      @total_100 = (@total.to_i*100)/@total_max.to_i

      @score.update(total:@total, total_max:@total_max, total_100:@total_100.floor,name:DateTime.current.to_date)

    end
  end
end
