class CategoryTeam < ApplicationRecord
  belongs_to :score
  has_one :answer_team, dependent: :destroy

  validates :score_id, uniqueness: true

  after_update :scoring_total

  def scoring_total
    @market = CategoryMarket.find_by(score_id:self.score_id)
    @team = CategoryTeam.find_by(score_id:self.score_id)
    @score = Score.find(self.score_id)

    if !@market.total_notation_market.nil? && !@team.total_notation_team.nil?
      @total = @market.total_notation_market + @team.total_notation_team
      @total_max = @market.max_notation_market + @team.max_notation_team

      @total_100 = (@total.to_i*100)/@total_max.to_i

      @score.update(total:@total, total_max:@total_max, total_100:@total_100.floor,name:DateTime.current.to_date)

    end

  end

end
