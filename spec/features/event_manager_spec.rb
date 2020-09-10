require "rails_helper"

RSpec.describe EventManager, :type => :feature do
    let(:user) { User.create(username: "gui", email: "gui@example.com") }
    let(:event) { Event.create(name:"Great Event", date:"18-9-2020", description:"Description of a great event.") }
    let(:creator) { User.create(username: "magz", email: "magz@example.com") }
        describe "Invite user to an event" do
            it "should invite user " do
                visit new_event_manager_path
                expect(page).to have_text('Invite a Friend')
                page.select(event.id, :from => "event_manager_attended_event_id")
                page.select(user.username, :from => 'selected_event')
                click_link 'Invite User'
                
    

            # dropdown = all('select').first

            # select('Great Event', from: dropdown)
            # puts Event.all
            # dropdown = find('select#selected_event')

            # select('gui', from: dropdown)

            # click_button "Invite User"
            # expect(page).to have_content('You sent the invitation!')
          # page.select(event.id, :from => "event_manager_attended_event_id")
          # page.select(user.id, :from => "user")
          # click_button 'Invite User'
          # visit root_path
           # First we need to be in the root path
        end
    end
end