module ApplicationHelper
  def has_user_role? user_role
    current_user and current_user.has_user_role? user_role
  end

  def is_admin?
    current_user and current_user.has_user_role? :admin
  end

  def get_current_hometeams
  	hometeams = Team.where(ishometeam: true).order :class_id
    hometeams.each_with_object([]) do |hometeam, current_hometeams|
      current_hometeams << hometeam
    end
  end

  def add_lang_to_links text
    text.gsub %r{/:lang}, (lang_from_url? && !current_lang.to_s.eql?(default_locale.to_s) ? "/#{current_lang}" : '')
  end
end
