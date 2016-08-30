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
    expect(build :coach, :further_information).to be_valid
  end

  it 'is valid without anything but a name' do
    expect(build :coach).to be_valid
  end

  it 'is not valid without a name' do
    expect(build :coach, surname: nil, givenname: nil).to_not be_valid
    expect(build :coach, surname: nil).to_not be_valid
    expect(build :coach, givenname: nil).to_not be_valid
    expect(build :coach, :further_information, surname: nil, givenname: nil).to_not be_valid
    expect(build :coach, :further_information, surname: nil).to_not be_valid
    expect(build :coach, :further_information, givenname: nil).to_not be_valid
  end
end
