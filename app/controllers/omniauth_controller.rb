class OmniauthController < ApplicationController
  def localized
    session[:omniauth_login_locale] = I18n.locale
    redirect_to eval("user_#{params[:provider]}_omniauth_authorize_path")
  end
end
