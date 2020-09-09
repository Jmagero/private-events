require "rails_helper"

RSpec.describe EventManager, :type => :feature do
    describe "the invitation process" do
        let(:user) { User.create(username: "gui", email: "gui@example.com") }
        let(:invitee) { create(:user) }
        let(:event) { Event.create(name:"Great Event", date:"18-9-2020", description:"Description of a great event.") }
        it "invite a user to an event" do
            visit '/sessions/new' 
            fill_in 'username', with: user.username
            fill_in 'email', with: user.email
            click_button 'Submit'
            expect(page).to have_content('Successfully logged in!')
            click_link event.name
          # page.select(event.id, :from => "event_manager_attended_event_id")
          # page.select(user.id, :from => "user")
          # click_button 'Invite User'
          # visit root_path
           # First we need to be in the root path
        end
    end
end