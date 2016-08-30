# db/seeds/development/clubs.seeds.rb
after 'development:teams' do
  team_ox = Team.find_by_name 'VfB Oxstedt'
  team_aw = Team.find_by_name 'TSV Altenwalde'
  team_nhz = Team.find_by_name 'TSG Nordholz'

  Club.create(
    name: 'VfB Oxstedt',
    teams: [ team_ox ])

  Club.create(
    name: 'TSV Altenwalde',
    teams: [ team_aw ])

  Club.create(
    name: 'TSG Nordholz',
    teams: [ team_nhz ])
end
