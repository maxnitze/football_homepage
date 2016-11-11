class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  add_flash_types :error, :danger, :warning, :success

  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :check_for_mobile

  before_action :set_locale

  def current_lang
    I18n.locale.to_s
  end
  helper_method :current_lang

  def default_locale
    current_user ? current_user.locale : I18n.default_locale
  end
  helper_method :default_locale

  def current_user_has_permission? permission, &block
    current_user && (current_user.has_user_role_permission?(permission.to_s) || (block_given? ? yield(current_user) : false))
  end
  helper_method :current_user_has_permission?

  def ensure_signup_complete
    return if action_name.eql?('finish_signup')

    if current_user && !current_user.email_verified?
      redirect_to finish_signup_path(current_user)
    end
  end

  def default_url_options options={}
    (I18n.locale.to_s.eql?(default_locale) ? { locale: nil } : { locale: I18n.locale }).merge options
  end

  def after_sign_in_path_for resource
    request.env['omniauth.origin'] || stored_location_for(resource) || root_path
  end

  def after_sign_out_path_for resource
    request.env['omniauth.origin'] || request.referrer
  end

  def check_for_mobile
    session[:mobile_override] = params[:mobile] if params[:mobile]
    prepare_for_mobile if mobile_device?
  end

  def prepare_for_mobile
    prepend_view_path Rails.root + 'app' + 'views_mobile'
  end

  def mobile_device?
    if session[:mobile_override]
      session[:mobile_override] == "1"
    else
      # Season this regexp to taste. I prefer to treat iPad as non-mobile.
      (request.user_agent =~ /Mobile|webOS/) && (request.user_agent !~ /iPad/)
    end
  end
  helper_method :mobile_device?


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
    helper_method :flash_message

    def flash_now_message type, text
      if !flash.now[type]
        flash.now[type] = []
      elsif flash.now[type].is_a? String
        flash.now[type] = [flash.now[type]]
      end

      flash.now[type] << text
    end
    helper_method :flash_now_message

  private
    def set_locale
      I18n.locale = params[:locale] || (current_user ? current_user.locale : nil) || extract_locale_from_accept_language_header || I18n.default_locale
    end

    def extract_locale_from_accept_language_header
      request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first unless request.env['HTTP_ACCEPT_LANGUAGE'].nil?
    end
end
