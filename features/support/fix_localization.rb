# features/support/fix_localization.rb

# workaround, to set default locale for ALL spec
class ActionDispatch::Integration::Session
  def default_url_options options = {}
    { locale: ENV['LOCALE'] || I18n.default_locale }
  end
end
