require "make_snippet"

RSpec.describe "make_snippet method" do
    context "given and empoty string" do 
        it "returns and empty string" do
            result = make_snippet("")
            expect(result).to eq ""
        end 
    end 

    context "given a string of four words" do
        it "returns that string" do 
            result = make_snippet("one two three four")
            expect(result).to eq "one two three four"
        end 
    end 

    context "given a string of five words" do
        it "returns that string" do 
            result = make_snippet("one two three four five")
            expect(result).to eq "one two three four five"
        end 
    end 

    context "given a string of six words" do
        it "it returns the first 5 with a ..." do 
            result = make_snippet("one two three four five six")
            expect(result).to eq "one two three four five..."
        end 
    end 
end 