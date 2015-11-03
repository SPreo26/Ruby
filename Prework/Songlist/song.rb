class Song

	attr_reader :artist, :duration, :lyrics

	def initialize (artist, duration, lyrics)

		@artist = artist.to_s
		@duration = duration.to_i.abs
		@lyrics = lyrics.to_s

	end

	def play
		`say #{@lyrics}`
	end

	def friendly_duration
		"#{@duration/60} minutes, #{@duration%60} seconds"
	end

end	