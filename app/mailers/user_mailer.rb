class UserMailer < ApplicationMailer

  default from: 'no-reply@scoreit-thp.com'


  def welcome_email(user)
    @user = user
    @url = 'https://scoreit-thp.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Bienvenue sur ScoreIt')
  end
  
end
