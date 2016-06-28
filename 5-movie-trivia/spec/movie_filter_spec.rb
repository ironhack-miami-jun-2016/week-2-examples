require_relative "../lib/movie_filter"

class FakeMovie
  attr_accessor :poster
end

RSpec.describe "MovieFilter" do
  let(:movie_no_poster) { FakeMovie.new }

  let(:movie_with_poster) do
    the_movie = FakeMovie.new
    the_movie.poster = "http://example.com"
    the_movie
  end

  let(:filtered_movies) do
    movies = [ movie_no_poster, movie_no_poster ]
    20.times do
      movies.push( movie_with_poster )
    end

    movie_filter = MovieFilter.new(movies)
    movie_filter.filter(15)
  end

  it "returns the correct amount of movies" do
    expect( filtered_movies.length ).to eq(15)
  end

  it "removes movies without posters" do
    filtered_movies.each do |the_movie|
      expect( the_movie.poster ).not_to be_nil
    end
  end
end
