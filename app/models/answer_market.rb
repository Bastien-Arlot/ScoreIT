class AnswerMarket < ApplicationRecord
  belongs_to :category_market

  validates :answer_market_1, presence: true
  validates :answer_market_2, presence: true
  validates :answer_market_3, presence: true
  validates :answer_market_4, presence: true
  validates :answer_market_5, presence: true
  validates :answer_market_6, presence: true
  validates :answer_market_7, presence: true
  validates :answer_market_8, presence: true

  validates :category_market_id, uniqueness: true, presence: true

  after_create :scoring_market

  def scoring_market

    @total = 0

    if self.answer_market_1 == 1
      @total = @total - 1
    end
    if self.answer_market_2 == 1
      @total = @total - 3
    end

    if self.answer_market_3.to_i > 50
      @total = @total + 1
    end

    if self.answer_market_3.to_i > 50 && self.answer_market_4.to_i > 50
      @total = @total - 1
    elsif self.answer_market_4 < 15
      @total = @total + 1
    end

    case self.answer_market_5
    when 0
      @total = @total
    when 2..10
      @total = @total + 2
    else
      @total = @total + 1
    end

    if self.answer_market_6 == 1
      @total = @total + 1
    end

    case self.answer_market_7
    when 2..9
      @total = @total + 1
    when 10
      @total = @total + 3
    else
      @total = @total
    end

    case self.answer_market_8
    when 5..7
      @total = @total + 1
    when 8..10
      @total = @total + 2
    else
      @total = @total
    end

    @total_max = 10

    if @total.to_i < 0
      @total = 0
    end

    @total_100 = (@total.to_i * 100) / @total_max.to_i

    @category = CategoryMarket.find(self.category_market_id)

    @category.update(total_rate_market:@total, max_rate_market:@total_max, total_100_market:@total_100.floor)

  end

end
