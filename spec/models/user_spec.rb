require "rails_helper"

RSpec.describe User, :type => :model do
    context 'Association tests' do
      it 'has many events' do
        user = User.reflect_on_association(:events)
        expect(user.macro).to eq(:has_many)
      end
    end

    context 'Association tests' do
      it 'has many event_managers' do
        user = User.reflect_on_association(:event_managers)
        expect(user.macro).to eq(:has_many)
      end
    end

    context 'Association tests' do
      it 'has attended_events' do
        user = User.reflect_on_association(:attended_events)
        expect(user.macro).to eq(:has_many)
      end
    end

end