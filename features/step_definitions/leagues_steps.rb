# feature/step_definitions/leagues_steps.rb

Given /^there is a league$/ do
  @league = FactoryGirl.create :league
end

Given /^there is a league named '(.+)'$/ do |name|
  @league = FactoryGirl.create :league, name: name
end

Given /^the path of the league is visited$/ do
  visit league_path(@league)
end

Given /^the edit path of the league is visited$/ do
  visit edit_league_path(@league)
end

Then /^the leagues attributes should be shown$/ do
  expect(page).to have_content(@league.name)
  expect(page).to have_content(I18n.t FOOTBALL_CLASSES[@league.class_id].second)
  expect(page).to have_content(@league.iscup)
  expect(page).to have_content(@league.isfemale)
  expect(page).to have_content(@league.noreferee)
end

Then /^a league with the name '(.+)' should be shown$/ do |name|
  step "the leagues attributes should be shown"
  expect(page).to have_content(name)
end

Then /^the path of the league should be rendered$/ do
  expect(page.current_path).to eq league_path(@league)
end

Then /^the edit path of the league should be rendered$/ do
  expect(page.current_path).to eq edit_league_path(@league)
end

Then /^the edit league button is not shown$/ do
  expect(page).to_not have_content(I18n.t 'leagues.nav.edit_league')
end

Then /^the edit league button is shown$/ do
  expect(page).to have_content(I18n.t 'leagues.nav.edit_league')
end
