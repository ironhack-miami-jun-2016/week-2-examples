require_relative("../lib/post.rb")

RSpec.describe Post do
  
  before :each do 
    @post = Post.new("Hello World", Time.new(2016, 1, 20), "This is my first post on my cool new blog")
    @post2 = Post.new("This is another post", Time.new(2016, 1, 20), "This is because Matt ruined my tests")
  end 

  it("#title returns title") do
    expect(@post.title).to eq("Hello World")
  end

  it("#date returns date") do 
    expect(@post.date).to eq(Time.new(2016, 1, 20))
  end

  it("#content returns content") do
    expect(@post.content).to eq("This is my first post on my cool new blog")
  end

  it("#angry_title returns the title with all caps and three exclamation points") do 
    expect(@post2.angry_title).to eq("THIS IS ANOTHER POST!!!")
  end
end
