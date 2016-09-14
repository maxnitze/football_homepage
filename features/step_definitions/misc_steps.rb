# feature/step_definitions/misc_steps.rb

Given /^PENDING/ do
  pending
end

Given /^the (.+) flash message for '(.+)' should be shown$/ do |model, message|
  expect(page).to have_content(I18n.t("#{model}.flash.#{message}"))
end
