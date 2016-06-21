# app.rb

require "sinatra"

get "/" do
  erb(:home)
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


users = {
  "khalifenizar" => { :name => "Nizar Khalife", :email => "nnnnn@nnnnn.com" },
  "ag" => { :name => "Alida Gagliuffi", :email => "agagagag@agagag.com" },
  "alia" => { :name => "Alia Poonawala", :email => "aaaa@aaaaa.com" }
}


get "/users/:username" do
  @name = params[:username]

  if @name == "jalexy12" || @name == "josh"
    erb(:whiskey_time)
  else
    @info = users[@name]
    erb(:user_profile)
  end
end





