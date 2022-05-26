class Musiclistened 

def initialize 
  @list = []
end 
    
def adding(track)
  @list.push(track)
end 

def returning
  return @list
end 
end 