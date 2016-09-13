# feature/step_definitions/users_steps.rb

Given /^there is a user$/ do
  @user = FactoryGirl.create :user
  @user.confirmed_at = Time.zone.now
  @user.save
end

Given /^there is a logged in user$/ do
  step 'there is a user'
  step 'the user is logged in'
end

Given /^there is a user named (.+)$/ do |name|
  @user = FactoryGirl.create :user, name: name
  @user.confirmed_at = Time.zone.now
  @user.save
end

Given /^there is a logged in user named (.+)$/ do |name|
  step "there is a user named #{name}"
  step 'the user is logged in'
end

And /^the user has the user role '(.+)'$/ do |user_role|
  @user.user_roles << UserRole.find_by_symbol(user_role)
end
