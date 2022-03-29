class UserMailer < ApplicationMailer

  default from: 'reygner0224@gmail.com'


  def welcome_email(user)
    @user = user
    @url = 'https://scoreit-thp.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Bienvenue sur ScoreIt')
  end

  def new_startup_email(startup)
    @startup = startup
    @user = User.find_by(id: startup.user_id)
    @url = 'https://scoreit-thp.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject:'Enregistrement de startup - ScoreIt')
  end

  def score_email(score)
    @finance = CategoryFinance.find_by(score_id:score.id).total_100_finance
    @innovation = CategoryInnovation.find_by(score_id:score.id).total_100_innovation
    @market = CategoryMarket.find_by(score_id:score.id).total_100_market
    @offer = CategoryOffer.find_by(score_id:score.id).total_100_offer
    @strategy = CategoryStrategy.find_by(score_id:score.id).total_100_strategy
    @team = CategoryTeam.find_by(score_id:score.id).total_100_team
    @startup = Startup.find(score.startup_id)
    @score = score
    @user = User.find_by(id: @startup.user_id)
    @url = 'https://scoreit-thp.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject:'Ton score!')
  end

end
