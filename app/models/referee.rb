# == Schema Information
#
# Table name: referees
#
#  id                    :integer          not null, primary key
#  surname               :string
#  givenname             :string
#  club_id               :integer
#  created_at            :datetime
#  updated_at            :datetime
#  birthday              :datetime
#  portrait_file_name    :string
#  portrait_content_type :string
#  portrait_file_size    :integer
#  portrait_updated_at   :datetime
#

class Referee < ActiveRecord::Base
  belongs_to :club
  has_many :matches

  validates_presence_of :surname, :givenname, :club

  has_attached_file :portrait, styles: { medium: '160x200>', thumb: '80x100>' }, default_url: "/system/referees/portraits/no_portrait.png"
  validates_attachment_content_type :portrait, content_type: /\Aimage\/.*\Z/

  def full_name
  	"#{givenname} #{surname}"
  end
end
