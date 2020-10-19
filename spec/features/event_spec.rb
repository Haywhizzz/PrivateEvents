require 'rails_helper'

RSpec.describe "Event features" do
    it "displays the list of events" do
        visit('/events')
        expect(page).to have_content('Events')
    end
    
end
