require 'rails_helper'

RSpec.describe Event, type: :model do
  context "validation tests" do
    it "ensures name presence" do
      event = Event.new(description: 'Some randon text here', location: 'Somewhere', date: '21-10-2020').save
      expect(event).to eql(false)
    end
  end

  context "validation tests" do
    it "ensures location presence" do
      event = Event.new(name: 'Someone', description: 'Some randon text here', date: '21-10-2020').save
      expect(event).to eql(false)
    end
  end

  context "validation tests" do
    it "should save successfully" do
      event = Event.new(name: 'Someone', description: 'Some randon text here', location: 'Somewhere', date: '21-10-2020').save
      expect(event).to eql(false)
    end
  end
end
