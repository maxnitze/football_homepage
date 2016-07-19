# permissions for user roles

# users
UserRolePermission.create(
  symbol: :can_update_users,
  description: 'user_role_permissions.can_update_users.description')

UserRolePermission.create(
  symbol: :can_destroy_users,
  description: 'user_role_permissions.can_destroy_users.description')

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

# news
UserRolePermission.create(
  symbol: :can_create_team,
  description: 'user_role_permissions.can_create_team.description')

UserRolePermission.create(
  symbol: :can_update_team,
  description: 'user_role_permissions.can_update_team.description')

UserRolePermission.create(
  symbol: :can_destroy_team,
  description: 'user_role_permissions.can_destroy_team.description')

# betting game
UserRolePermission.create(
  symbol: :can_update_bettinggame,
  description: 'user_role_permissions.can_update_bettinggame.description')
