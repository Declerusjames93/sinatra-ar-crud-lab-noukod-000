
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
    erb: new
  end
#
 post '/posts' do
  Post.create(params)
  redirect '/posts'
end

end
