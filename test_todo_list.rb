require 'rspec'
require_relative 'task.rb'

describe Task do
  let(:task) { Task.new('walk the dog', 'take the dog for a walk around the block', false, DateTime.now) }
  context "#initialize" do
    it "creates a task object" do
      expect(task).to be_an_instance_of Task
    end

    it "requires four parameters" do
      expect {Task.new}.to raise_error (ArgumentError)
    end
  end

  context "#title" do
    it "should return the title" do
      expect(task.title).to eq("walk the dog")
    end
  end

  context "#description" do
    it "should return the description" do
      expect(task.description).to eq('take the dog for a walk around the block')
    end
  end

  context "#status" do
    it "should return the status" do
      expect(task.status).to eq(false)
    end
  end

  context "#created_at" do
    it "should return the created at time" do
      expect(task.status).to is_a?(DateTime)
    end
  end
end

