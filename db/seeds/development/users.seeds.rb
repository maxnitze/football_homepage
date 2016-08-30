# db/seeds/development/users.seeds.rb
admin = UserRole.find_by_symbol :admin
super_editor = UserRole.find_by_symbol :super_editor
editor = UserRole.find_by_symbol :editor
teams_admin = UserRole.find_by_symbol :teams_admin
leagues_admin = UserRole.find_by_symbol :leagues_admin
bettinggame_manager = UserRole.find_by_symbol :bettinggame_manager

max = User.create(
  name: 'Max Nitze',
  surname: 'Nitze',
  givenname: 'Max',
  email: 'max.nitze@googlemail.com',
  password: 'test1234',
  user_roles: [ admin, super_editor, bettinggame_manager ],
  locale: :en,
  provider: 'google_oauth2',
  uid: '112843738969681941517',
  confirmed_at: Time.now,
  confirmation_sent_at: Time.now,
  current_sign_in_at: Time.now,
  last_sign_in_at: Time.now,
  current_sign_in_ip: '127.0.0.1',
  last_sign_in_ip: '127.0.0.1')

User.create(
  name: 'Philipp Kömpel',
  surname: 'Kömpel',
  givenname: 'Philipp',
  email: 'p.koempel@gmx.de',
  password: 'test1234',
  user_roles: [ editor ],
  locale: :de,
  confirmed_at: Time.now,
  confirmation_sent_at: Time.now,
  current_sign_in_at: Time.now,
  last_sign_in_at: Time.now,
  current_sign_in_ip: '127.0.0.1',
  last_sign_in_ip: '127.0.0.1')
