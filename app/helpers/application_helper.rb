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

  def get_local_datetime time
  	weekdays = [ 'So', 'Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So' ]
    time.getlocal.strftime "#{weekdays[time.getlocal.wday]}, %d.%m.%Y %H:%M"
  end
end
