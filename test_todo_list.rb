require 'rspec'

describe Task do
  let(:task) { Task.new}
  context "#initialize" do
    it "creates a task object" do
      expect(task).to be_an_instance_of Task
    end

    it "requires four parameters" do
      expect {Task.new}.to raise_error (ArgumentError)
    end
  end
end

