puts "Enter your 5 fave foods"

foods=[]

5.times do

    foods << gets.chomp

end

p foods

foods.each do |food|

    puts "I love #{food}"

end

foods.each_with_index do |food, index|

    puts "#{index+1}. #{food}"

end

count = 0

while count <= 10

  puts count
  count += 1

end

