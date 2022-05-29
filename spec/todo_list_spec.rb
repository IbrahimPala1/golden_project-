require "todo_list"

RSpec.describe Todolist do
    context "initially" do
        it "is empty" do
            todo_list = Todolist.new
            expect(todo_list.incomplete).to eq []
            expect(todo_list.complete).to eq []
            expect(todo_list.give_up!).to eq "all tasks are complete"
        end 
    end 
end 


