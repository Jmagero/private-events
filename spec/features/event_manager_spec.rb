require "rails_helper"

RSpec.describe EventManager, :type => :feature do
    let(:user) { User.create(username: "gui", email: "gui@example.com") }
    let(:event) { Event.create(name:"Great Event", date:"18-9-2020", description:"Description of a great event.") }
    describe "Invite user to an event" do
        it "should invite user " do
            visit new_event_manager_path
            expect(page).to have_text('Invite a Friend')
        end
    end
end