json.array!(@user_role_permissions) do |user_role_permission|
  json.extract! user_role_permission, :id, :symbol, :description
  json.url user_role_permission_url(user_role_permission, format: :json)
end
