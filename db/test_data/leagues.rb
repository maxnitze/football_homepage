team_ox = Team.find_by name: 'VfB Oxstedt', class_id: 13
team_aw = Team.find_by name: 'TSV Altenwalde', class_id: 13
team_nhz = Team.find_by name: 'TSG Nordholz', class_id: 13

team_ox_ah = Team.find_by name: 'VfB Oxstedt', class_id: 14
team_aw_ah = Team.find_by name: 'TSV Altenwalde', class_id: 14
team_nhz_ah = Team.find_by name: 'TSG Nordholz', class_id: 14

l1 = League.create(
  name: '2. Kreisklasse Staffel 1',
  start: Time.local(2015, 7, 1),
  end: Time.local(2016, 6, 30),
  class_id: 13,
  iscup: false,
  isfemale: false,
  noreferee: false)

l2 = League.create(
  name: '2. Kreisklasse, Staffel 1',
  start: Time.local(2016, 7, 1),
  end: Time.local(2017, 6, 30),
  class_id: 13,
  iscup: false,
  isfemale: false,
  noreferee: false)

l3 = League.create(
  name: '1. Kreisklasse, Staffel 1',
  start: Time.local(2016, 7, 1),
  end: Time.local(2017, 6, 30),
  class_id: 14,
  iscup: false,
  isfemale: false,
  noreferee: false)

l1.teams << [team_ox, team_aw, team_nhz]
l2.teams << [team_ox, team_aw, team_nhz]
l3.teams << [team_ox_ah, team_aw_ah, team_nhz_ah]
