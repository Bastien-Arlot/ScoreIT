class UserMailer < ApplicationMailer

  default from: 'reygnerxbox@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'https://scoreit-thp.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Bienvenue sur ScoreIt')
  end

  def new_startup_email(startup)
    @startup = startup
    @user = User.find_by(id: startup.user_id)
    @url = 'https://scoreit-thp.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Enregistrement de startup - ScoreIt')
  end

  def score_email(score)
    @score = score
    @finance = CategoryFinance.find_by(score_id: score.id).total_100_finance
    @innovation = CategoryInnovation.find_by(score_id: score.id).total_100_innovation
    @market = CategoryMarket.find_by(score_id: score.id).total_100_market
    @offer = CategoryOffer.find_by(score_id: score.id).total_100_offer
    @strategy = CategoryStrategy.find_by(score_id: score.id).total_100_strategy
    @team = CategoryTeam.find_by(score_id: score.id).total_100_team
    @startup = Startup.find(score.startup_id)
    @user = User.find_by(id: @startup.user_id)
    @url = 'https://scoreit-thp.herokuapp.com/users/sign_in'

    pdf = WickedPdf.new.pdf_from_string(
      render_to_string('/orders/certificate.html.erb', layout: 'pdf')
    );

    attachments["Certificat notation pour #{@startup.name} du #{@score.name}.pdf"] = pdf

    mail(to: @user.email, subject: 'Ton score!')
  end

end
