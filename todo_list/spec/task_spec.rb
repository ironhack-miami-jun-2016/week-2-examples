# spec/task_spec.rb

require_relative("../lib/task.rb")

RSpec.describe Task do

  describe "complete?" do
    it "returns false for new tasks" do
      task = Task.new("Wash Pants")

      expect( task.complete? ).to eq(false)
    end
  end

end
