# == Schema Information
#
# Table name: coaches
#
#  id         :integer          not null, primary key
#  surname    :string
#  givenname  :string
#  birthday   :datetime
#  picture    :string
#  created_at :datetime
#  updated_at :datetime
#

# spec/models/coach_spec.rb
require 'rails_helper'

RSpec.describe Coach, type: :model do
  it 'has a valid factory' do
    expect(build :coach).to be_valid
  end

  it 'is valid without a birthday' do
    expect(build :coach, birthday: nil).to be_valid
  end

  it 'is valid without a picture' do
    expect(build :coach, picture: nil).to be_valid
  end

  it 'is not valid without a name' do
    expect(build :coach, surname: nil, givenname: nil).to_not be_valid
    expect(build :coach, surname: nil).to_not be_valid
    expect(build :coach, givenname: nil).to_not be_valid
  end
end
