class Musiclibrary
    def initialize
      @track = []
    end
  
    def add(track)
      @track << track
    end
  
    def all
      return @track
    end
    
    def search_by_title(keyword) 
        return @track.select do |track|
            track.title.include?(keyword) 
        end
    end
end 