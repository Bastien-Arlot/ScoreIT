class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def google_oauth2
    @user = User.from_google(request.env['omniauth.auth'])

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success)
    else
      session['devise.google'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
    end
  end

  def facebook
    @user = User.from_facebook(request.env['omniauth.auth'])

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success)
    else
      session['devise.facebook'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
    end
  end

  def github
    @user = User.from_github(request.env['omniauth.auth'])

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success)
    else
      session['devise.github'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
    end
  end

end
