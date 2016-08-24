module LeaguesHelper
  def permitted_to_create_leagues?
    current_user && current_user.has_user_role_permission?(:can_create_leagues)
  end

  def permitted_to_edit_leagues?
  	current_user && current_user.has_user_role_permission?(:can_update_leagues)
  end

  def full_title league
    "#{title league} (#{year league})"
  end

  def title league
    "#{league.name} #{league.iscup ? "(#{I18n.t('leagues.cup')})" : ''}"
  end
end
