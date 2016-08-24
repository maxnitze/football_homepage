# permissions for user roles

# users
UserRolePermission.create(
  symbol: :can_update_user,
  description: 'user_role_permissions.can_update_user.description')

UserRolePermission.create(
  symbol: :can_destroy_user,
  description: 'user_role_permissions.can_destroy_user.description')

# news
UserRolePermission.create(
  symbol: :can_create_news,
  description: 'user_role_permissions.can_create_news.description')

UserRolePermission.create(
  symbol: :can_update_news,
  description: 'user_role_permissions.can_update_news.description')

UserRolePermission.create(
  symbol: :can_destroy_news,
  description: 'user_role_permissions.can_destroy_news.description')

# teams
UserRolePermission.create(
  symbol: :can_create_teams,
  description: 'user_role_permissions.can_create_teams.description')

UserRolePermission.create(
  symbol: :can_update_teams,
  description: 'user_role_permissions.can_update_teams.description')

UserRolePermission.create(
  symbol: :can_destroy_teams,
  description: 'user_role_permissions.can_destroy_teams.description')

# leagues
UserRolePermission.create(
  symbol: :can_create_leagues,
  description: 'user_role_permissions.can_create_leagues.description')

UserRolePermission.create(
  symbol: :can_update_leagues,
  description: 'user_role_permissions.can_update_leagues.description')

UserRolePermission.create(
  symbol: :can_destroy_leagues,
  description: 'user_role_permissions.can_destroy_leagues.description')

# betting game
UserRolePermission.create(
  symbol: :can_update_bettinggame,
  description: 'user_role_permissions.can_update_bettinggame.description')
