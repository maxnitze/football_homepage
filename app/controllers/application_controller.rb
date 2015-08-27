class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  helper_method :current_lang
  def current_lang
    I18n.locale.to_s
  end

  helper_method :default_locale
  def default_locale
    current_user ? current_user.locale : I18n.default_locale
  end

  helper_method :lang_from_url?
  def lang_from_url?
    true
  end

  def ensure_signup_complete
    return if action_name == 'finish_signup'

    if current_user && !current_user.email_verified?
      redirect_to finish_signup_path(current_user)
    end
  end

  def default_url_options options = {}
    (I18n.locale.to_s == default_locale ? { locale: nil } : { locale: I18n.locale }).merge options
  end

  def after_sign_in_path_for resource
    request.env['omniauth.origin'] || stored_location_for(resource) || root_path
  end

  def after_sign_out_path_for resource
    request.env['omniauth.origin'] || request.referrer
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << [:surname, :givenname]
      devise_parameter_sanitizer.for(:account_update) << [:surname, :givenname]
    end

    helper_method :flash_message
    def flash_message type, text
      if !flash[type]
        flash[type] = []
      elsif flash[type].is_a? String
        flash[type] = [flash[type]]
      end

      flash[type] << text
    end

    helper_method :flash_now_message
    def flash_now_message type, text
      if !flash.now[type]
        flash.now[type] = []
      elsif flash.now[type].is_a? String
        flash.now[type] = [flash.now[type]]
      end

      flash.now[type] << text
    end

  private
    def set_locale
      I18n.locale = params[:locale] || current_user.locale || extract_locale_from_accept_language_header || I18n.default_locale
    end

    def extract_locale_from_accept_language_header
      request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    end
end
