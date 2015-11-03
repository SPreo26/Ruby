class List

	attr_reader :songs

	def initialize 
		
		@songs=[]
	
	end

	def add_song(artist, duration, lyrics)
		
		@songs << Song.new(artist, duration, lyrics)
	
	end

	def play

		@songs.each do |song|
			song.play
		end

	end

	def shuffle

		@songs.shuffle.each do |song|
			song.play
		end
	end

	def duration

		total_seconds = 0

		@songs.each do |song|

			total_seconds += song.duration

		end

		return total_seconds

	end

end