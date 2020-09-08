require "rails_helper"

RSpec.describe User, :type => :model do
    context 'Association tests' do
      it 'has many posts' do
        user = User.reflect_on_association(:events)
        expect(user.macro).to eq(:has_many)
      end
    end
end