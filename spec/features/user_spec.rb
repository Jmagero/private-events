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

end