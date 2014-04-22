require 'rspec'
require 'rspec/expectations'
require_relative '../task.rb'

RSpec::Matchers.define :be_boolean do
  match do |actual|
    actual.should satisfy { |x| x == true || x == false }
  end
end

describe Task do
  let(:task) { Task.new('walk the dog', 'take the dog for a walk around the block') }
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
    it "default status should return incomplete" do
      expect(task.instance_variable_get(:@status)).to eq("incomplete")
    end
  end

  context "#created_at" do
    it "should return a time at initialization" do
      expect(task.instance_variable_get(:@created_at)).to be_a(DateTime)
    end
  end

  context "#mark_as_complete!" do
    it "should set status to complete" do
      task.mark_as_complete!
      expect(task.status).to eq("complete")
    end
  end

  context "#mark_as_incomplete!" do
    it "should set status to incomplete" do
      task.mark_as_incomplete!
      expect(task.status).to eq("incomplete")
    end
  end

  context "#complete?" do
    it "should return a boolean value indicating completeness" do
      expect(task.complete?).to be_boolean
    end
  end
end
