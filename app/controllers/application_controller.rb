require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :session, "wonderful_brewery"
  end

  get "/" do
    erb :index
  end

  helpers do
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      Brewery.find_by(id: session[:user_id])
    end

  end

end
