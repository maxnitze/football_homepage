class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def self.provides_callback_for(symbol, name)
    class_eval %Q{
      def #{symbol}
        @user = User.from_omniauth(request.env["omniauth.auth"])

        if @user.persisted?
          I18n.locale = session[:omniauth_login_locale] || I18n.default_locale
          sign_in_and_redirect @user, event: :authentication
          set_flash_message(:notice, :success, kind: "#{name}") if is_navigational_format?
        else
          session["devise.#{symbol}_data"] = env["omniauth.auth"]
          redirect_to new_user_registration_url
        end
      end
    }
  end

  OMNIAUTH_PROVIDERS.each do |symbol, name|
    provides_callback_for symbol, name
  end

  def failure
    redirect_to root_path
  end

  def after_sign_in_path_for resource
    if resource.email_verified?
      super resource
    else
      finish_signup_path(resource)
    end
  end
end
