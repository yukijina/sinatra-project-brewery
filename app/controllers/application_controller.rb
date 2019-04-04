class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "wonderful_brewery"
    use Rack::Flash
  end

  get "/" do
    erb :index
  end

  helpers do
    def logged_in?
      !!session[:brewery_id]
    end

    def current_user
      @current_user ||= Brewery.find_by(id: session[:brewery_id])
    end

    def redirect_to_logged_in
      redirect "/login" unless logged_in?
    end

    def no_matching_page
      @no_matching_page ||= flash.now[:notice] = "Sorry, there is no matching page "
    end

  end

end
