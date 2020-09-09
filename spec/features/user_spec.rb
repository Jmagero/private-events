require "rails_helper"

RSpec.describe User, :type => :feature do
  describe "the sign up process" do
    it "signs up a new user" do
      visit '/users/new' 
      fill_in 'Username', with: 'User 0'
      fill_in 'Email', with: '0@gmail.com'
      click_button 'Create User'
      expect(page).to have_content 'User'
    end
  end
  
  
  describe "the signin process" do
    it "logs me in" do
      visit '/sessions/new' 
      fill_in 'Username', with: 'User 0'
      fill_in 'Email', with: '0@example.com'
      click_button 'Submit'
      expect(page).to have_content 'user'
    end
  end
end