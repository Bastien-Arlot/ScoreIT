class AnswerOffer < ApplicationRecord
  belongs_to :category_offer

  validates :answer_offer_1, presence: true
  validates :answer_offer_2, presence: true
  validates :answer_offer_3, presence: true
  validates :answer_offer_4, presence: true
  validates :answer_offer_5, presence: true
  validates :answer_offer_6, presence: true
  validates :answer_offer_7, presence: true
  validates :answer_offer_8, presence: true


  validates :category_offer_id, uniqueness: true, presence: true

  after_create :scoring_offer

  def scoring_offer

    @total = 0

    if self.answer_offer_1 == 2
      @total = @total + 1
    end
    puts @total

    if self.answer_offer_2.to_i >= 25
      @total = @total + 1
    end
    puts @total

    if self.answer_offer_3.to_i == (50..70)
      @total = @total + 1
    elsif self.answer_offer_3.to_i >= 80
      @total = @total + 2
    end
    puts @total

    if self.answer_offer_4.to_i == (50..70)
      @total = @total + 1
    elsif self.answer_offer_4.to_i >= 80
      @total = @total + 2
    end
    puts @total

    if self.answer_offer_5.to_i == (50..70)
      @total = @total + 1
    elsif self.answer_offer_5.to_i >= 80
      @total = @total + 2
    end
    puts @total

    if self.answer_offer_6.to_i == (50..70)
      @total = @total + 1
    elsif self.answer_offer_6.to_i >= 80
      @total = @total + 2
    end
    puts @total

    if self.answer_offer_7.to_i == (50..70)
      @total = @total + 1
    elsif self.answer_offer_7.to_i >= 80
      @total = @total + 2
    end
    puts @total

    if self.answer_offer_8 == 1
      @total = @total + 1
    end
    puts @total



    @total_max = 13


    @total_100 = (@total.to_i*100)/@total_max.to_i


    @category = CategoryOffer.find(self.category_offer_id)
    @category.update(total_notation_offer:@total, max_notation_offer:@total_max, total_100_offer:@total_100.floor)
  end

end
