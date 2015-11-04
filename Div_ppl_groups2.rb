puts "Enter names of students; type 'stop' to end"
names = []
input_string = 0
group_size = 3

while true

  input_string = gets.chomp
  
  break if (input_string.downcase == "stop")
  names << input_string

end

name_groups = []
group_index = 0
group_size_const = names.length

while names.length > 0

  if names.length <= group_size*2-1
    name_groups << names.pop(names.length)
  else
    name_groups << names.pop(group_size)
  end

end
p name_groups
