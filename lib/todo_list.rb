class Todolist
  def initialize
      @todo_list = []
  end
  
  def add(todo2) 
      @todo_list << todo2
  end
  
  def incomplete
    return @todo_list.select {|task| task.done? == false}
  end 
  
  def complete
    return @todo_list.select {|task| task.done? == true}
  end
  
  def give_up!
    return "all tasks are complete"
  end
end
  