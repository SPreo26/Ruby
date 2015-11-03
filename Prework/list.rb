class List
  attr_reader :tasks

  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_tasks #returns the NAMES of incomplete tasks
    incomplete_task_names = []
    @tasks.each do |task|
      unless task.complete
        incomplete_task_names << task.name
      end
    end
    return incomplete_task_names
  end

  def number_of_incomplete_tasks
     self.incomplete_tasks.length
  end

  def delete_complete_tasks
     @tasks.delete_if {|task| task.complete}
     puts "completed tasks deleted"
     return
  end

  def sort_by_priority

      if @tasks.length == 0

         puts "No tasks to sort"
         return

      end

      tasks_sorted_by_priority = tasks.sort {|a, b| b.priority<=>a.priority}
      task_names_sorted_by_priority = []

      tasks_sorted_by_priority.each do |task|
         task_names_sorted_by_priority << [task.name, task.priority]
      end

      return task_names_sorted_by_priority 

  end

end