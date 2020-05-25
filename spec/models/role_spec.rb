require 'rails_helper'

RSpec.describe Role, type: :model do
  describe 'has valid attributes' do
    it { should validate_presence_of(:name) }
    subject { Role.create(name: 'Jon') }
    it { should validate_uniqueness_of(:name) }
  end
end
