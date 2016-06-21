# app.rb

require "sinatra"

get "/" do
  "Hello, World!"
end

get "/hi" do
  @name = "Nizar"

  erb(:hi_page)
end

get "/about" do
  erb(:blah)
end

get "/recipe" do
  @name = "Red Velvet Cake"
  @ingredients = [
    "eggs",
    "flour",
    "red food coloring",
    "cocoa",
    "buttermilk",
    "sugar",
    "cream cheese"
  ]

  erb(:recipe_page)
end
