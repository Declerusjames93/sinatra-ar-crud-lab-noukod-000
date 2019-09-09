
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end
#create a new
  get '/posts/new' do
    erb :new
  end
#save new post to the database
 post '/posts' do
  Post.create(params)
  redirect '/posts'
end
# This allows us to see our posts
  get '/posts' do
    @posts = Post.all
    erb :index
  end
end
