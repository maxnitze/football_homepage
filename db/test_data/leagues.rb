team_ox = Team.find_by_name 'VfB Oxstedt'
team_aw = Team.find_by_name 'TSV Altenwalde'
team_nhz = Team.find_by_name 'TSG Nordholz'

League.create(
  name: '2. Kreisklasse',
  start: Time.local(2014, 7, 1),
  end: Time.local(2015, 6, 30),
  class_id: 5,
  iscup: false,
  isfemale: false,
  noreferee: false,
  teams: [ team_ox, team_aw, team_nhz ])
