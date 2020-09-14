require 'rails_helper'

RSpec.describe EventManager, type: :feature do
  let(:user) { User.create(username: 'gui', email: 'gui@example.com') }
  let(:event) { Event.create(name: 'Great Event', date: '18-9-2020', description: 'Description of a great event.') }
  describe 'Invite user to an event' do
    it 'should invite user' do
      visit '/users/new'
      fill_in 'Username', with: 'gui'
      fill_in 'Email', with: 'gui@example.com'
      click_button 'Create User'
      expect(page).to have_content 'Log_in'
      visit '/sessions/new'
      fill_in 'Username', with: 'gui'
      fill_in 'Email', with: 'gui@example.com'
      click_button 'Submit'
      expect(page).to have_content 'Successfully logged in!'
      click_link 'Create Event'
      visit '/events/new'
      fill_in 'Name', with: 'Great Event'
      fill_in 'Description', with: 'Description of a great event.'
      fill_in 'Date', with: 9-12-2020
      click_button 'Create Event'
      expect(page).to have_content 'Great Event'
      click_link 'Invite'
      visit new_event_manager_path
      expect(page).to have_text('Invite a Friend')
      find('#event_manager_attended_event_id').find(:xpath, 'option[1]').select_option         
      find('#event_manager_attendee_id').find(:xpath, 'option[1]').select_option
      click_button 'Invite User'
      expect(page).to have_content 'Upcoming events'
    end
  end
end
