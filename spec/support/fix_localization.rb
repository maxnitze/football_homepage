# workaround, to set default locale for ALL spec
class ActionView::TestCase::TestController
  def default_locale
    @current_user ? @current_user.locale : I18n.default_locale
  end

  def default_url_options options={}
    (I18n.locale.to_s.eql?(default_locale.to_s) ? { locale: nil } : { locale: I18n.locale }).merge options
  end
end

class ActionDispatch::Routing::RouteSet
  def default_locale
    @current_user ? @current_user.locale : I18n.default_locale
  end

  def default_url_options options={}
    (I18n.locale.to_s.eql?(default_locale.to_s) ? { locale: nil } : { locale: I18n.locale }).merge options
  end
end
