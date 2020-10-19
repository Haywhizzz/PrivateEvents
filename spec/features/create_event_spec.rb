require 'rails_helper'

RSpec.feature "CreateEvents", type: :feature do
    before(:each) do
      @user = User.create!(username: 'Paul')
    end
  
    scenario 'they can sign up and create events' do
      visit new_user_path
      fill_in 'username', with: 'Paul'
      click_button 'Save'
      expect(page).to have_content('Events')
      visit events_new_path
      expect(page).to have_content('Create New Event')
      fill_in 'event[title]', with: 'Birthday Party'
      fill_in 'event[description]', with: 'My 16th birthday party'
      fill_in 'event[location]', with: 'Bar Beach'
      fill_in 'event[date]', with: '2020-10-15'
      click_button 'Save'
      expect(page).to have_content('Events')
    end
  
  end