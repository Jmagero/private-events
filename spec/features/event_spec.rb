require "rails_helper"

RSpec.describe Event, :type => :feature do
    describe "the event creation process" do
        it "creates a new event" do
          visit '/events/new' 
          fill_in 'Description', with: 'event'
          click_button 'Create Event'
          expect(page).to have_content 'event'
        end
    end
end