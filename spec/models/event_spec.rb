require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'Association tests' do
    it 'has many event_managers' do
      event = Event.reflect_on_association(:event_managers)
      expect(event.macro).to eq(:has_many)
    end
  end

  context 'Association tests' do
    it 'has many attendees' do
      event = Event.reflect_on_association(:attendees)
      expect(event.macro).to eq(:has_many)
    end
  end

  context 'Association tests' do
    it 'belongs to creator' do
      event = Event.reflect_on_association(:creator)
      expect(event.macro).to eq(:belongs_to)
    end
  end
end
