class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def scoring_total
    @finance = CategoryFinance.find_by(score_id:self.score_id)
    @innovation = CategoryInnovation.find_by(score_id:self.score_id)
    @market = CategoryMarket.find_by(score_id:self.score_id)
    @offer = CategoryOffer.find_by(score_id:self.score_id)
    @strategy = CategoryStrategy.find_by(score_id:self.score_id)
    @team = CategoryTeam.find_by(score_id:self.score_id)

    @score = Score.find(self.score_id)

    if !@market.total_notation_market.nil? && !@team.total_notation_team.nil? && !@innovation.total_notation_innovation.nil? && !@finance.total_notation_finance.nil? && !@offer.total_notation_offer.nil? && !@strategy.total_notation_strategy.nil?
      @total = @market.total_notation_market + @team.total_notation_team + @innovation.total_notation_innovation + @finance.total_notation_finance + @offer.total_notation_offer + @strategy.total_notation_strategy
      @total_max = @market.max_notation_market + @team.max_notation_team + @innovation.max_notation_innovation + @finance.max_notation_finance + @offer.max_notation_offer + @strategy.max_notation_strategy

      @total_100 = (@total.to_i*100)/@total_max.to_i

      @score.update(total:@total, total_max:@total_max, total_100:@total_100.floor,name:DateTime.current.to_date)

    end
  end
  
end
