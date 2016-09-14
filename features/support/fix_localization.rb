# features/support/fix_localization.rb

# workaround, to set default locale for ALL spec
class ActionDispatch::Integration::Session
  def default_locale
    @current_user ? @current_user.locale : I18n.default_locale
  end

  def default_url_options options={}
    (I18n.locale.to_s == default_locale ? { locale: nil } : { locale: I18n.locale }).merge options
  end
end
