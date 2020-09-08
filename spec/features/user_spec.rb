require "rails_helper"

RSpec.describe User, :type => :feature do
  describe "the signin process" do
    # before :each do
    #   User.create( username: 'user', email: 'user@example.com')
    # end

    it "logs me in" do
      visit '/users/new' 
      fill_in 'Username', with: 'user'
      fill_in 'Email', with: 'user@example.com'
      click_button 'Create User'
      expect(page).to have_content 'user'
    end
  end

  describe "the event creation process" do
    it "creates a new event" do
      visit 'users/new'
      visit '/events/new' 
      fill_in 'Description', with: 'event'
      click_button 'Create Event'
      expect(page).to have_content 'event'
    end
  end

end