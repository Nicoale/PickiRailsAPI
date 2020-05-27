require 'rails_helper'

RSpec.describe Role, type: :model do
  it { should have_many(:assignments) }
  it { should have_many(:users).through(:assignments) }

  describe 'has valid attributes' do
    it { should validate_presence_of(:name) }
    subject { Role.create(name: 'Jon') }
    it { should validate_uniqueness_of(:name) }
  end
end
