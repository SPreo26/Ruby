require_relative "list"
require_relative "task"

# Create list
list = List.new

# Create tasks and add them to the list
list.add_task(Task.new("Feed the cat"))
list.add_task(Task.new("Take out trash"))
list.add_task(Task.new("Mow the lawn"))

# Print out the second task in the list
puts "Second task:"
puts list.tasks[1].name
puts "---------"

# Get an array containing the names of all incomplete tasks from the list
puts "Incomplete Tasks:"
puts list.incomplete_tasks
puts "--------"

# Toggle the second task to complete and back to incomplete 
# and print the task object with structure each time
list.tasks[1].toggle_complete!
p list.tasks[1]
list.tasks[1].toggle_complete!
p list.tasks[1]


puts list.number_of_incomplete_tasks

# Mark the first task from the list as complete
list.tasks[0].complete!

puts list.number_of_incomplete_tasks

# Delete complete tasks
list.delete_complete_tasks 
puts list.tasks.length

# Print out the incomplete tasks again
puts "Incomplete Tasks:"
puts list.incomplete_tasks

puts ""
puts "Priority of task 1:"
puts list.tasks[0].priority
list.tasks[0].assign_priority(0)
list.tasks[0].assign_priority(11)
list.tasks[0].assign_priority(1)
puts "New priority of task 1:"
puts list.tasks[0].priority
puts ""

puts "Priorities sorted from highest to lowest"
puts list.sort_by_priority

