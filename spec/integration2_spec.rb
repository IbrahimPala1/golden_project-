require "todo_list"
require "todo2"

RSpec.describe "integration" do
    context "when todo task is added to list" do
        it "returns that the task has not been completed" do
            todolist = Todolist.new
            todo2 = Todo2.new("shopping")
            todolist.add(todo2)
            expect(todolist.incomplete).to eq [todo2]
        end 
    end

    context "when todo task is added to list" do
        it "returns that the task has been completed" do
            todolist = Todolist.new
            todo2 = Todo2.new("go gym")
            todo2.mark_done!
            todolist.add(todo2)
            expect(todolist.complete).to eq [todo2]
        end 
    end

    context "when all tasks are completed" do
        it "returns that all task have been completed" do
            todolist = Todolist.new
            expect(todolist.give_up!).to eq "all tasks are complete"
        end 
    end
end 


