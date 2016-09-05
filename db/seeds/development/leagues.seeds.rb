# db/seeds/development/leagues.seeds.rb
after 'development:teams' do
  team_ox = Team.find_by name: 'VfB Oxstedt', class_id: 13
  team_aw = Team.find_by name: 'TSV Altenwalde', class_id: 13
  team_nhz = Team.find_by name: 'TSG Nordholz', class_id: 13

  team_ox_ah = Team.find_by name: 'VfB Oxstedt', class_id: 14
  team_aw_ah = Team.find_by name: 'TSV Altenwalde', class_id: 14
  team_nhz_ah = Team.find_by name: 'TSG Nordholz', class_id: 14

  # league 1
  l1 = League.create(
    name: '2. Kreisklasse Staffel 1',
    start: Time.local(2015, 7, 1),
    end: Time.local(2016, 6, 30),
    class_id: 13,
    iscup: false,
    isfemale: false,
    noreferee: false)

  LeagueTeam.create(
    league: l1,
    team: team_ox,
    wincount: 0,
    losecount: 0,
    remiscount: 0,
    goalsshot: 0,
    goalsgot: 0,
    unsubscribed: false)

  LeagueTeam.create(
    league: l1,
    team: team_aw,
    wincount: 0,
    losecount: 0,
    remiscount: 0,
    goalsshot: 0,
    goalsgot: 0,
    unsubscribed: false)

  LeagueTeam.create(
    league: l1,
    team: team_nhz,
    wincount: 0,
    losecount: 0,
    remiscount: 0,
    goalsshot: 0,
    goalsgot: 0,
    unsubscribed: false)

  # league 2
  l2 = League.create(
    name: '2. Kreisklasse, Staffel 1',
    start: Time.local(2016, 7, 1),
    end: Time.local(2017, 6, 30),
    class_id: 13,
    iscup: false,
    isfemale: false,
    noreferee: false)

  LeagueTeam.create(
    league: l2,
    team: team_ox,
    wincount: 0,
    losecount: 0,
    remiscount: 0,
    goalsshot: 0,
    goalsgot: 0,
    unsubscribed: false)

  LeagueTeam.create(
    league: l2,
    team: team_aw,
    wincount: 0,
    losecount: 0,
    remiscount: 0,
    goalsshot: 0,
    goalsgot: 0,
    unsubscribed: false)

  LeagueTeam.create(
    league: l2,
    team: team_nhz,
    wincount: 0,
    losecount: 0,
    remiscount: 0,
    goalsshot: 0,
    goalsgot: 0,
    unsubscribed: false)

  # league 3
  l3 = League.create(
    name: '1. Kreisklasse, Staffel 1',
    start: Time.local(2016, 7, 1),
    end: Time.local(2017, 6, 30),
    class_id: 14,
    iscup: false,
    isfemale: false,
    noreferee: false)

  LeagueTeam.create(
    league: l3,
    team: team_ox_ah,
    wincount: 0,
    losecount: 0,
    remiscount: 0,
    goalsshot: 0,
    goalsgot: 0,
    unsubscribed: false)

  LeagueTeam.create(
    league: l3,
    team: team_aw_ah,
    wincount: 0,
    losecount: 0,
    remiscount: 0,
    goalsshot: 0,
    goalsgot: 0,
    unsubscribed: false)

  LeagueTeam.create(
    league: l3,
    team: team_nhz_ah,
    wincount: 0,
    losecount: 0,
    remiscount: 0,
    goalsshot: 0,
    goalsgot: 0,
    unsubscribed: false)
end
