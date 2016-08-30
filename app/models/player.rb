# == Schema Information
#
# Table name: players
#
#  id                    :integer          not null, primary key
#  surname               :string
#  givenname             :string
#  birthday              :datetime
#  position              :integer
#  leg                   :integer
#  created_at            :datetime
#  updated_at            :datetime
#  portrait_file_name    :string
#  portrait_content_type :string
#  portrait_file_size    :integer
#  portrait_updated_at   :datetime
#

class Player < ActiveRecord::Base
  has_many :league_team_players
  has_many :teams, through: :league_team_players
  has_many :leagues, through: :league_team_players

  validates_presence_of :surname, :givenname, :birthday, :position, :leg

  has_attached_file :portrait, styles: { medium: '160x200>', thumb: '80x100>' }, default_url: "/system/players/portraits/no_portrait.png"
  validates_attachment_content_type :portrait, content_type: /\Aimage\/.*\Z/

  enum position: FIELD_POSITIONS
  enum leg: PLAYER_LEGS

  def full_name
  	"#{givenname} #{surname}"
  end
end
