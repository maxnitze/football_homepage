can_create_news = UserRolePermission.find_by_symbol :can_create_news
can_update_news = UserRolePermission.find_by_symbol :can_update_news
can_destroy_news = UserRolePermission.find_by_symbol :can_destroy_news
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
  name: 'user_roles.bettinggame_manager.name',
  description: 'user_roles.bettinggame_manager.description',
  symbol: :bettinggame_manager,
  user_role_permissions: [ can_update_bettinggame ])
