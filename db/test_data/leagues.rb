team_ox = Team.find_by_name 'VfB Oxstedt'
team_aw = Team.find_by_name 'TSV Altenwalde'
team_nhz = Team.find_by_name 'TSG Nordholz'

l1 = League.create(
  name: '2. Kreisklasse',
  start: Time.local(2014, 7, 1),
  end: Time.local(2015, 6, 30),
  class_id: 13,
  iscup: false,
  isfemale: false,
  noreferee: false)

l1.teams << [team_ox, team_aw, team_nhz]
