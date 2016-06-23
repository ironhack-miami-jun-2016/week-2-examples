require "sinatra"
require "sinatra/reloader"

require_relative("lib/task.rb")
require_relative("lib/todo_list.rb")

my_list = TodoList.new

get "/" do
  @tasks = my_list.tasks

  erb :list_of_tasks
end
