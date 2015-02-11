# Outputs the reading time

# Read this in “about 4 minutes”
# Put into your _plugins dir in your Jekyll site
# Usage: Read this in about {{ page.content | reading_time }}

module ReadingTimeFilter
	def reading_time( input )
		words_per_minute = 180

		words = input.split.size;
		minutes = ( words / words_per_minute ).floor
        if minutes > 0
            "#{minutes} minute read"
        else
            "<1 minute read"
        end
	end
end

Liquid::Template.register_filter(ReadingTimeFilter)
