require_relative "list"
require_relative "song"

my_list = List.new

my_list.add_song("Me",120,"Me and You. The sky is blue.")
my_list.add_song("You",124,"You and I. Lets not be shy.")
my_list.add_song("Us",359,"Us! Aaah. Save all of the universe!")

my_list.songs[1].play

puts [my_list.songs[1].artist, "#{my_list.songs[1].duration} seconds",
	 my_list.songs[1].lyrics]

puts my_list.songs[2].friendly_duration

puts "Total duration is: #{my_list.duration}"

my_list.play

my_list.shuffle