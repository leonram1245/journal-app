require 'rails_helper'

RSpec.describe Category  do
 describe '#validations' do
    it "should return false if title is blank" do 
        task = Task.new(title:"")

        expect(task.save).to eq false
    end
end
end

