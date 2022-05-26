class Todo
  def initialize 
    @list = []
  end 

  def adding(task)
    @list.push(task)
  end 

  def returning 
    return @list
  end 

  def deleting(task)
    if @list.include?(task)
        return @list.delete(task)
    else 
        fail "Not in list"
    end 
  end 
end
