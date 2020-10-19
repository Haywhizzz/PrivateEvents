require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures username presence' do
      user = User.new(username: '').save
      expect(user).to eql(false)
    end

    it 'should save successfully' do
      user = User.new(username: 'Abigail').save
      expect(user).to eql(true)
    end
  end
end
