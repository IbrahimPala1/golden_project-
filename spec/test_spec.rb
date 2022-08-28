require "./lib/test"

RSpec.describe "esra" do 
    it "checks if it prints esra" do 
        result = esra
        expect(esra).to eq "Esra"
    end 
    it 'checks 3 + 3 = 7' do 
        result = adding
        expect(adding).to eq 6
    end 
    it "goes through an array and prints the even numbers" do 
        result = multiply
        expect(multiply).to eq [2, 4, 6]
    end 

    it "goes through an array and prints the even numbers" do 
        result = multiply2
        expect(multiply2).to eq [1, 2, 3, 1, 2, 3]
    end 

    it "returns welcome with name " do 
        result = name
        expect(name).to eq "Hello James!, Welcome to Istanbul"
    end 
end 