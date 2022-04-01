class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def scoring_total
    @finance = CategoryFinance.find_by(score_id: self.score_id)
    @innovation = CategoryInnovation.find_by(score_id: self.score_id)
    @market = CategoryMarket.find_by(score_id: self.score_id)
    @offer = CategoryOffer.find_by(score_id: self.score_id)
    @strategy = CategoryStrategy.find_by(score_id: self.score_id)
    @team = CategoryTeam.find_by(score_id: self.score_id)

    @score = Score.find(self.score_id)

    if !@market.total_rate_market.nil? && !@team.total_rate_team.nil? && !@innovation.total_rate_innovation.nil? && !@finance.total_rate_finance.nil? && !@offer.total_rate_offer.nil? && !@strategy.total_rate_strategy.nil?
      @total = @market.total_rate_market + @team.total_rate_team + @innovation.total_rate_innovation + @finance.total_rate_finance + @offer.total_rate_offer + @strategy.total_rate_strategy
      @total_max = @market.max_rate_market + @team.max_rate_team + @innovation.max_rate_innovation + @finance.max_rate_finance + @offer.max_rate_offer + @strategy.max_rate_strategy

      @total_100 = (@total.to_i * 100) / @total_max.to_i

      @certificatenumber = rand(10000000000)

      while !Score.find_by(certificatenumber: @certificatenumber).nil?
        @certificatenumber = rand(10000000000)
      end

      @score.update(total: @total, total_max: @total_max, total_100: @total_100.floor, name: DateTime.current.to_date, certificatenumber: @certificatenumber)

    end
  end

end
