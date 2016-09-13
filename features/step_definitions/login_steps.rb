# feature/step_definitions/login_steps.rb

And /^the user is logged in$/ do
  visit root_path
  fill_in 'user_email', with: @user.email
  fill_in 'user_password', with: @user.password
  click_button I18n.t('layouts.header.login')
end
