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

  after_create :create_category_market
  after_create :create_category_team
  after_create :create_category_innovation
  after_create :create_category_strategy
  after_create :create_category_finance
  after_create :create_category_offer

  def create_category_market
    @category_market = CategoryMarket.new(
      'score_id' => self.id
    )
    @category_market.save
  end

  def create_category_team
    @category_team = CategoryTeam.new(
      'score_id' => self.id
    )
    @category_team.save
  end

  def create_category_innovation
    @category_innovation = CategoryInnovation.new(
      'score_id' => self.id
    )
    @category_innovation.save
  end

  def create_category_strategy
    @category_strategy = CategoryStrategy.new(
      'score_id' => self.id
    )
    @category_strategy.save
  end

  def create_category_finance
    @category_finance = CategoryFinance.new(
      'score_id' => self.id
    )
    @category_finance.save
  end

  def create_category_offer
    @category_offer = CategoryOffer.new(
      'score_id' => self.id
    )
    @category_offer.save
  end

  validate :score_exist?, on: :create
  validate :delay_score, on: :create

  def score_exist?

    @score_exist = Score.where(startup_id: self.startup_id).last

    if !@score_exist.nil? && @score_exist.name.nil?
      errors.add(:score_exist?, "Vous ne pouvez pas créer une nouvelle notation sans avoir fini la précédente")
      return false
    end

  end

  def delay_score

    @score = Score.where(startup_id: self.startup_id)

    if !@score.last.nil? && !@score.last.name.nil?

      @last_score = @score.last

      @now_90 = @last_score.name.to_date + 90
      if @now_90 < Date.today || @last_score.startup.havecredit == true
        return true
      else
        puts errors.add(:score_delay, "Error, not enough delay. The delay should be 90 days.")
        return false
      end
    else
      return true
    end
  end

  def create_category_human
    @category_human = CategoryHuman.new(
      'score_id' => self.id
    )
    @category_human.save
  end

  def create_category_finance
    @category_finance = CategoryFinance.new(
      'score_id' => self.id
    )
    @category_finance.save
  end

end
