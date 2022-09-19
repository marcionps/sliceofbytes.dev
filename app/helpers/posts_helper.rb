module PostsHelper
    def reading_time(content)
        words_per_minute = 180

        words = content.split.size;
        minutes = ( words / words_per_minute ).floor
        minutes_label = minutes === 1 ? " minute" : " minutes"
        minutes > 0 ? "#{minutes} #{minutes_label} read" : "less than 1 minute read"
    end
end
