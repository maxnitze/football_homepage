# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' ))
#   Mayor.create(name: 'Emanuel', city: cities.first)

# test-data, no real seeds
max = User.create(
  name: 'Max Nitze',
  surname: 'Nitze',
  givenname: 'Max',
  email: 'max.nitze@googlemail.com',
  password: 'test1234',
  confirmed_at: Time.now,
  confirmation_sent_at: (Time.now - 1*60*60),
  current_sign_in_at: Time.now,
  last_sign_in_at: Time.now,
  current_sign_in_ip: '127.0.0.1',
  last_sign_in_ip: '127.0.0.1')

Identity.create(
  user: max,
  provider: 'google_oauth2',
  uid: '112843738969681941517')

team_ox = Team.create(
  name: 'VfB Oxstedt',
  ishometeam: true,
  hometeamname: '1. Herren',
  isfemale: false,
  class_id: 5)

team_aw = Team.create(
  name: 'TSV Altenwalde',
  ishometeam: false,
  hometeamname: '',
  isfemale: false,
  class_id: 5)

team_nhz = Team.create(
  name: 'TSG Nordholz',
  ishometeam: false,
  hometeamname: '',
  isfemale: false,
  class_id: 5)

club_ox = Club.create(
  name: 'VfB Oxstedt',
  teams: [ team_ox ])

club_aw = Club.create(
  name: 'TSV Altenwalde',
  teams: [ team_aw ])

club_nhz = Club.create(
  name: 'TSG Nordholz',
  teams: [ team_nhz ])

player_max = Player.create(
  surname: 'Nitze',
  givenname: 'Max',
  birthday: Time.local(1990, 1, 28),
  position: :defense,
  leg: :right)

player_jan = Player.create(
  surname: 'Radnitz',
  givenname: 'Jan',
  birthday: Time.local(1984, 2, 3),
  position: :offense,
  leg: :left)

player_florian = Player.create(
  surname: 'Ermler',
  givenname: 'Florian',
  birthday: Time.local(1987, 1, 22),
  position: :goal,
  leg: :left)

league = League.create(
  name: '2. Kreisklasse',
  start: Time.local(2014, 7, 1),
  end: Time.local(2015, 6, 30),
  class_id: 5,
  iscup: false,
  isfemale: false,
  noreferee: false,
  teams: [ team_ox, team_aw, team_nhz ])
