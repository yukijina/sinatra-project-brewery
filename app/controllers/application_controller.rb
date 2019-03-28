require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :session, "wonderfulbrewery"

  end

  get "/" do
    erb :index
  end

end
