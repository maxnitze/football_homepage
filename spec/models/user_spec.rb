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

# spec/models/user_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid factory' do
    expect(build :user).to be_valid
  end

  UserRole.all.each do |user_role|
    eval %{
      it 'has a valid factory \\'#{user_role.symbol}\\' trait' do
        #{user_role.symbol} = build :user, :#{user_role.symbol}
        expect(#{user_role.symbol}).to be_valid
        expect(#{user_role.symbol}.user_roles.find { |role| role.symbol.eql?('#{user_role.symbol}') }).to_not be_nil
      end
    }
  end

  it 'is valid without an avatar' do
    expect(build :user, avatar_file_name: nil, avatar_content_type: nil, avatar_file_size: nil, avatar_updated_at: nil).to be_valid
  end

  it 'is not valid without a name' do
    expect(build :user, name: nil).to_not be_valid
    expect(build :user, surname: nil).to_not be_valid
    expect(build :user, givenname: nil).to_not be_valid
  end

  it 'is not valid without an email' do
    expect(build :user, email: nil).to_not be_valid
  end

  it 'is not valid without a password' do
    expect(build :user, encrypted_password: nil).to_not be_valid
  end

  it 'is not valid without a locale' do
    expect(build :user, locale: nil).to_not be_valid
  end
end
