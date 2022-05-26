require "todo"

RSpec.describe Todo do
    it "adds todo task to list" do
        todo_result = Todo.new 
        todo_result.adding("swimming")
        expect(todo_result.returning).to eq ["swimming"]
    end

    it "marks tasks as complete and dissapears from list" do 
        todo_result = Todo.new 
        todo_result.adding("swimming")
        todo_result.deleting("swimming") 
        expect(todo_result.returning).to eq []
    end 

    it "returns an error if nothing in list to delete" do 
        todo_result = Todo.new 
        expect { todo_result.deleting("swimming") }.to raise_error "Not in list"
    end 
        
end 
