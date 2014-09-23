class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    user.roles_mask = [:guest]

    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :editor
      can :manage, News
      can [:read, :create, :update], NewsComment
    elsif user.has_role? :kicktipp_manager
      # set abilities for kicktipp user
    elsif user.has_role? :guest
      can :read, [News, NewsComment]
    end
  end
end
