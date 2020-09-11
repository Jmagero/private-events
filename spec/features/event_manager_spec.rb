require 'rails_helper'

RSpec.describe EventManager, type: :feature do
  let(:user) { User.create(username: 'gui', email: 'gui@example.com') }
  let(:event) { Event.create(name: 'Great Event', date: '18-9-2020', description: 'Description of a great event.') }
  describe 'Invite user to an event' do
    it 'should invite user' do
      visit '/sessions/new'
      fill_in 'Username', with: 'User 0'
      fill_in 'Email', with: '0@example.com'
      click_button 'Submit'
      expect(page).to have_content 'user'
      click_button event.name
      visit '/event/1'
      click_button 'Invite'
      visit new_event_manager_path
      expect(page).to have_text('Invite a Friend')
      find('#event_manager_attended_event_id').find(:xpath, 'option[1]').select_option
      find('#event_manager_attendee_id').find(:xpath, 'option[1]').select_option
      click_button 'Invite User'
      expect(page).to have_text('You sent the invitation!')
    end
  end
end
