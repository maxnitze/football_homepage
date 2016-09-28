# spec/support/fix_localization.rb
# workaround, to set default locale for ALL spec
class ActionView::TestCase::TestController
  def default_url_options options={}
    subject.default_url_options options
  end
end
