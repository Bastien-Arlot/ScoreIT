class AnswerFinance < ApplicationRecord
  belongs_to :category_finance

  validates :answer_finance_1, presence: true
  validates :answer_finance_2, presence: true
  validates :answer_finance_3, presence: true
  validates :answer_finance_4, presence: true
  validates :answer_finance_5, presence: true

  validates :category_finance_id, uniqueness: true, presence: true

  after_create :scoring_finance

  def scoring_finance
    @total = 0

    case self.answer_finance_1
    when 0..3
      @total = @total - 1
    when 3..10
      @total = @total
    else
      @total = @total + 1
    end

    if self.answer_finance_2 == 1
      @total = @total + 1
    end

    if self.answer_finance_3 == 2
      @total = @total + 1
    end

    case self.answer_finance_4
    when 1..2
      @total = @total + 1
    else
      @total = @total
    end

    if self.answer_finance_5 == 1
      @total = @total + 1
    end

    @total_max = 5

    if @total.to_i < 0
      @total = 0
    end

    @total_100 = (@total.to_i * 100) / @total_max.to_i

    @category = CategoryFinance.find(self.category_finance_id)

    @category.update(total_rate_finance:@total, max_rate_finance:@total_max, total_100_finance:@total_100.floor)


  end

end
