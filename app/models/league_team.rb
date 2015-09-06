# == Schema Information
#
# Table name: league_teams
#
#  id                   :integer          not null, primary key
#  league_id            :integer
#  team_id              :integer
#  picturecaption       :string
#  squadleagueteam_id   :integer
#  unsubscribed         :boolean
#  wincount             :integer
#  losecount            :integer
#  remiscount           :integer
#  goalsshot            :integer
#  goalsgot             :integer
#  created_at           :datetime
#  updated_at           :datetime
#  picture_file_name    :string
#  picture_content_type :string
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#

class LeagueTeam < ActiveRecord::Base
  validates_uniqueness_of :league_id, scope: [ :team_id ]
  validates_numericality_of :league_id, greater_than: 0
  validates_numericality_of :team_id, greater_than: 0
  validate :squadleagueteam_without_recursion, on: [ :create, :update ]

  belongs_to :league
  belongs_to :team
  belongs_to :squadleagueteam, class_name: 'LeagueTeam', foreign_key: :squadleagueteam_id

  has_attached_file :picture, styles: { medium: '640x360>', thumb: '80x45>' }, default_url: "/system/teams/pictures/no_teamphoto.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/

  def has_squadleagueteam
    !self.squadleagueteam_id.nil? && self.squadleagueteam_id > 0
  end

  def get_squadleagueteam
    self.has_squadleagueteam ? self.squadleagueteam.get_squadleagueteam : self
  end

  private
    def squadleagueteam_without_recursion
      errors.add(:base, I18n.t('leagues.errors.inheritance_recursion')) unless !self.has_squadleagueteam || get_squadleagueteam != self
    end
end
