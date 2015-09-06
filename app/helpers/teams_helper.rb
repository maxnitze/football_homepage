module TeamsHelper
  def get_teams_for_class cls
    Team.where(class_id: cls).order :name
  end
end
