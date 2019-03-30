class BreweriesController < ApplicationController

  get "/signup" do
    if logged_in?
      redirect "/login"
    else
      erb :"/breweries/new"
    end
  end

  post "/signup" do
    @brewery = Brewery.new(params)
    if @brewery.save
      session[:brwery_id] = @brewery.id
      redirect "/breweries/#{@brewery.id}"
    else
      erb :"/breweries/new"
    end
  end

  get "/login" do
    erb :"/breweries/login"
  end

  post "/login" do
    brewery = Brewery.find_by(email: params[:email])
    if brewery && brewery.authenticate(params[:password])
      session[:brewery_id] = brewery.id
      redirect "/breweries/#{brewery.id}"
    else
      redirect "/login"
    end
  end

  get "/logout" do
    if logged_in?
      session.clear
      redirect "/login"
    else
      redirect "/login"
    end
  end

  get "/breweries" do
      @breweries = Brewery.all
      erb :"/breweries/breweries"
  end

  get "/breweries/:id" do
    if logged_in?
      @brewery = Brewery.find_by_id(params[:id])
      current_user
      erb :"/breweries/show"
    else
      redirect "/login"
    end
  end


end
