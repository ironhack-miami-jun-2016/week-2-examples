require "sinatra"
require "sinatra/reloader"
require "imdb"

require_relative "lib/movie_filter.rb"

get "/" do
    erb :home
end

get "/game" do
    @title = params[:title]

    search = Imdb::Search.new(@title)
    movie_filter = MovieFilter.new(search.movies)

    @results = search.movies.length
    @movies = movie_filter.filter(9)
    @correct = @movies.sample

    erb :game
end
