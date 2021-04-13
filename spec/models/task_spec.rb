require 'rails_helper'

RSpec.describe Task  do
 describe '#validations' do
    it "should return false if title is blank" do 
        task = Task.new(title:"")
        expect(task.save).to eq false
    end
    it "should return false if description is blank" do
        task = Task.new(description:"")    
        expect(task.save).to eq false
    end
    it "should return false if deadline is blank" do
        task = Task.new(deadline:"")    
        expect(task.save).to eq false
    end
    it "should return false if title is unique" do
        task = Task.new(title:"")    
        expect(task.save).to eq false
    end
  end
end

