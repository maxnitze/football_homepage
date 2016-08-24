module TeamsHelper
  def permitted_to_create_teams?
    current_user && current_user.has_user_role_permission?(:can_create_teams)
  end

  def permitted_to_edit_teams?
  	current_user && current_user.has_user_role_permission?(:can_update_teams)
  end

  def get_teams_for_class cls
    Team.where(class_id: cls).order :name
  end
end
