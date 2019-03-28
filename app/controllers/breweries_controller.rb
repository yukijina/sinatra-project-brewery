class BreweriesController < ApplicationController

  get "/signup" do
    erb :"/breweries/new"
  end

  post "/signup" do
    binding.pry
    brewery = Brewery.new(params)
    if brewery.save
      session[:user_id] = brewery.id
      redirect "/breweries"
    else
      redirect "/signup"
    end
  end

  get "/login" do
    erb :"/breweries/login"
  end

  post "/login" do
    brewery = Brewery.find_by(email: params[:email])

    if brewery && brewery.authenticate(params[:password])
      session[:user_id] = brewery.id
      redirect "/breweries/#{brewery.id}"
    else
      redirect "/login"
    end
  end

  get "/breweries/:id" do
    if logged_in?
      brewery = Brewery.find_by_id(params[:id])
      current_user
      erb :"/breweries/show"
    else
    end
  end

  get "/breweries" do
    erb :"/breweries/breweries"
  end



end
