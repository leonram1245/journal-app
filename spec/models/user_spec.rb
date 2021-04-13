require 'rails_helper'

RSpec.describe Task  do
 describe '#validations' do
    it "should return false if username is blank" do 
        user = User.new(username:"")
        expect(user.save).to eq false
    end
    it "should return false if email is blank" do
        user = User.new(username:"")
        expect(user.save).to eq false
    end
  end
end

