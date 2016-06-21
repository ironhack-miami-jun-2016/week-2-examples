# spec/task_spec.rb

require_relative("../lib/task.rb")

RSpec.describe Task do

  describe "complete?" do
    it "returns false for new tasks" do
      task = Task.new("Wash Pants")

      expect( task.complete? ).to eq(false)
    end
  end

  describe "complete!" do
    it "sets @is_complete to true" do
      task = Task.new("Wash Pants")

      task.complete!

      expect( task.complete? ).to eq(true)
    end
  end

end
