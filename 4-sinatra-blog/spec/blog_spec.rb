require_relative("../lib/blog.rb")
require_relative("../lib/post.rb")

RSpec.describe Blog do 
  before :each do 
    @blog = Blog.new
    @post = Post.new("Hello World", Time.new(2016, 1, 1), "This is my first post on my cool new blog")
    @post2 = Post.new("This is another post", Time.new(2016, 1, 20), "This is because Matt ruined my tests")
  end

  it("#posts returns a array of posts") do
    expect(@blog.posts).to eq( [] ) 
  end

  it("#add_post adds a post to the list of posts") do 
    @blog.add_post(@post)
    @blog.add_post(@post2)
    expect(@blog.posts).to eq( [@post, @post2] )
  end

  it("#latest_posts returns an array with the most recent posts first") do 
    @blog.add_post(@post)
    @blog.add_post(@post2)
    expect(@blog.latest_posts).to eq( [@post2, @post] )
  end
end
