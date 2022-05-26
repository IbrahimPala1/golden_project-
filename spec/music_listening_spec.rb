require "music_listening"

RSpec.describe Musiclistened do
    it "adds tracks that have been listend to to list" do
        music_listened = Musiclistened.new 
        music_listened.adding("Billy Jean")
        music_listened.adding("Beat it")
        expect(music_listened.returning).to eq ["Billy Jean", "Beat it"]
    end 
end 