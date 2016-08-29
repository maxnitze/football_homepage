# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' ))
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w{
  user_role_permissions user_roles
}.each do |part|
  load "#{File.expand_path(__dir__)}/seeds/#{part}.rb"
end

# testdata, no real seeds
%w{
  users teams clubs players leagues news
}.each do |part|
  load "#{File.expand_path(__dir__)}/test_data/#{part}.rb"
end
