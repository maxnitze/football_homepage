class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  add_flash_types :error, :danger, :warning, :success

  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  helper_method :current_lang, :default_locale, :flash_message, :flash_now_message, :current_user_has_permission?

  def current_lang
    I18n.locale.to_s
  end

  def default_locale
    current_user ? current_user.locale : I18n.default_locale
  end

  def current_user_has_permission? permission
    current_user and current_user.has_user_role_permission? permission
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
      devise_parameter_sanitizer.permit(:sign_up, keys: [:surname, :givenname])
      devise_parameter_sanitizer.permit(:account_update, keys: [:surname, :givenname])
    end

    def flash_message type, text
      if !flash[type]
        flash[type] = []
      elsif flash[type].is_a? String
        flash[type] = [flash[type]]
      end

      flash[type] << text
    end

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
      I18n.locale = params[:locale] || (current_user ? current_user.locale : nil) || extract_locale_from_accept_language_header || I18n.default_locale
    end

    def extract_locale_from_accept_language_header
      request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    end
end
