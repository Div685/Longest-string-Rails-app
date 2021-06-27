require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validateions' do
    context 'When user name is nil' do
      it { should validate_presence_of(:uname) }
    end

    context 'when user name is less than 3 characters' do
      it { should validate_length_of(:uname).is_at_least(3).is_at_most(16) }
    end

    context 'when user name is less than 3 characters' do
      it { should validate_length_of(:password).is_at_least(8) }
    end
  end
end