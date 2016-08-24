can_create_news = UserRolePermission.find_by_symbol :can_create_news
can_update_news = UserRolePermission.find_by_symbol :can_update_news
can_destroy_news = UserRolePermission.find_by_symbol :can_destroy_news

can_create_teams = UserRolePermission.find_by_symbol :can_create_teams
can_update_teams = UserRolePermission.find_by_symbol :can_update_teams
can_destroy_teams = UserRolePermission.find_by_symbol :can_destroy_teams

can_create_leagues = UserRolePermission.find_by_symbol :can_create_leagues
can_update_leagues = UserRolePermission.find_by_symbol :can_update_leagues
can_destroy_leagues = UserRolePermission.find_by_symbol :can_destroy_leagues

can_update_bettinggame = UserRolePermission.find_by_symbol :can_update_bettinggame

# roles for users
UserRole.create(
  name: 'user_roles.admin.name',
  description: 'user_roles.admin.description',
  symbol: :admin,
  user_role_permissions: [])

UserRole.create(
  name: 'user_roles.super_editor.name',
  description: 'user_roles.super_editor.description',
  symbol: :super_editor,
  user_role_permissions: [ can_create_news, can_update_news, can_destroy_news ])

UserRole.create(
  name: 'user_roles.editor.name',
  description: 'user_roles.editor.description',
  symbol: :editor,
  user_role_permissions: [ can_create_news ])

UserRole.create(
  name: 'user_roles.teams_admin.name',
  description: 'user_roles.teams_admin.description',
  symbol: :teams_admin,
  user_role_permissions: [ can_create_teams, can_update_teams, can_destroy_teams ])

UserRole.create(
  name: 'user_roles.leagues_admin.name',
  description: 'user_roles.leagues_admin.description',
  symbol: :leagues_admin,
  user_role_permissions: [
    can_create_leagues, can_update_leagues, can_destroy_leagues,
    can_create_teams, can_update_teams, can_destroy_teams ])

UserRole.create(
  name: 'user_roles.bettinggame_manager.name',
  description: 'user_roles.bettinggame_manager.description',
  symbol: :bettinggame_manager,
  user_role_permissions: [ can_update_bettinggame ])
