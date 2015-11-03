puts "Enter names of students; type 'stop' to end"
names = []
input_string = 0
group_size = 2

while true

  input_string = gets.chomp
  
  if input_string.downcase == "stop"
      break
  else
    names << input_string
  end

end

name_groups = []
group_index = 0
group_size_const = names.length


while names.length > 0

  name_groups << []
  group_size.times do |index_within_group|
    
    sample_name_index = rand(names.length)

    #puts sample_name_index
    #puts names[sample_name_index]
    #puts group_index
    #puts index_within_group
    puts "length is #{names.length}"

    if names.length>0
      #p names
      #p name_groups
      #p group_index
      #p index_within_group
      #p sample_name_index
      name_groups[group_index][index_within_group]=\
                          names[sample_name_index]
    
      
      #p names
      #puts sample_name_index
      #puts names[sample_name_index]

      names.delete_at(sample_name_index)
    end 

    if names.length == 1 and group_size_const.odd?

      #puts "AAAAAA"
      #p names
      #puts sample_name_index
      #puts names[sample_name_index]

      name_groups[group_index][group_size]=\
                          names[sample_name_index]

      names.delete_at(sample_name_index)

      #name_groups.delete_at(-1)

      break

    end

  end

  group_index += 1

end

name_groups.each_with_index do |group, group_index|
  
  names_in_group = ""
  group.each_with_index do |name, index_within_group|
    
    if index_within_group == group.length-1
      comma_or_no = ""
    else
      comma_or_no = ", "
    end
    #p name
    #p names_in_group

    names_in_group += "#{name}#{comma_or_no}"

  end

  puts "Group #{group_index+1}: #{names_in_group}"

end
