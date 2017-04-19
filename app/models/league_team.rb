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
  belongs_to :league
  belongs_to :team
  belongs_to :squadleagueteam, class_name: 'LeagueTeam', foreign_key: :squadleagueteam_id

  validates_uniqueness_of :league_id, scope: [ :team_id ]
  validate :squadleagueteam_without_recursion, on: [ :create, :update ]

  validates_presence_of :league, :team, :wincount, :losecount, :remiscount,
    :goalsshot, :goalsgot
  validates_inclusion_of :unsubscribed, in: [ true, false ]
  validates_numericality_of :wincount, :losecount, :remiscount, :goalsshot, :goalsgot,
    greater_than_or_equal_to: 0

  has_attached_file :picture, styles: { medium: '640x360>', thumb: '80x45>' }, default_url: "/system/teams/pictures/no_teamphoto.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/

  def get_squadleagueteam
    self.squadleagueteam ? self.squadleagueteam.get_squadleagueteam : self
  end

  def get_possible_squadleagueteams
    LeagueTeam.all.select do |lt|
      self.team.eql?(lt.team) &&
        !self.league.eql?(lt.league) &&
          (lt.league.start >= self.league.start && lt.league.start <= self.league.end ||
           self.league.start >= lt.league.start && self.league.start <= lt.league.end)
    end
  end

  private
    def squadleagueteam_without_recursion
      errors.add(:squadleagueteam, I18n.t('activerecord.errors.models.attributes.looped_recursion')) if squadleagueteam_has_recursion
    end

    def squadleagueteam_has_recursion
      t_squadleagueteam = self
      visited_league_teams = [ self ]
      while t_squadleagueteam.squadleagueteam
        t_squadleagueteam = t_squadleagueteam.squadleagueteam
        if visited_league_teams.include? t_squadleagueteam
          return true
        end
        visited_league_teams += [ t_squadleagueteam ]
      end
      return false
    end
end
