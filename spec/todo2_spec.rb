require "todo2"

RSpec.describe Todo2 do
    context "marks done task done" do
        it "returns and empty array" do
            todo2 = Todo2.new("go gym")
            expect(todo2.mark_done!).to eq true 
        end 
    end 
end


