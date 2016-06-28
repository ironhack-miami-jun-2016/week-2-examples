class MovieFilter
    def initialize(movies)
        @movies = movies
    end

    def filter(amount)
        filtered = []
        checked = 0

        until filtered.length == amount || checked == @movies.length
            movie = @movies[checked]
            unless movie.poster.nil?
                filtered.push(movie)
            end
            checked += 1
        end

        filtered
    end
end
