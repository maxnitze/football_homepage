# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string
#  surname                :string
#  givenname              :string
#  created_at             :datetime
#  updated_at             :datetime
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  avatar_file_name       :string
#  avatar_content_type    :string
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#  locale                 :string
#  provider               :string
#  uid                    :string
#

class User < ActiveRecord::Base
  TEMP_EMAIL_PREFIX = 'change@me'
  TEMP_EMAIL_REGEX = /\Achange@me/

  has_and_belongs_to_many :user_roles
  has_many :authored_news, class_name: 'News', foreign_key: :author_id
  has_many :edited_news, class_name: 'News', foreign_key: :editor_id

  validates_presence_of :name, :surname, :givenname, :email, :encrypted_password, :locale
  validates_format_of :email, without: TEMP_EMAIL_REGEX, on: :update

  has_attached_file :avatar, styles: { medium: '300x300>', thumb: '100x100>' }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable
  devise :database_authenticatable, :registerable, :confirmable, :recoverable,
         :rememberable, :trackable, :validatable, :omniauthable,
         :omniauth_providers => [:facebook, :google_oauth2, :twitter]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
    end
  end

  def email_verified?
    self.email && self.email !~ TEMP_EMAIL_REGEX
  end

  def needs_password?
    !self.provider
  end

  def has_user_role? user_role
    user_roles.any? { |role| role.symbol.eql? user_role.to_s }
  end

  def has_user_role_permission? user_role_permission
    user_roles.any? do |role|
      role.symbol.eql? :admin.to_s || role.user_role_permissions.any? do |role_permission|
        role_permission.symbol.eql? user_role_permission.to_s
      end
    end
  end

  def get_avatar_file_name
    self.avatar_file_name || 'default_avatar.jpg'
  end
end
