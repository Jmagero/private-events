require "rails_helper"

RSpec.describe EventManager, :type => :feature do
    describe "the invitation process" do
        let(:creator) { create(:user) }
        let(:invitee) { create(:user) }
        let(:event) { build(:event) }
        it "invite a user to an event" do
            visit '/sessions/new' 
            fill_in 'Username', with: 'User 0'
            fill_in 'Email', with: '0@example.com'
            click_button 'Submit'
            expect(page).to have_content 'user'
            click_link 'Invite'
            visit '/event_managers/new'
          page.select(event.id, :from => "event_manager_attended_event_id")
          page.select(user.id, :from => "user")
          click_button 'Invite User'
          visit root_path
        end
    end
end