class BreweriesController < ApplicationController

  get "/signup" do
    erb :"/breweries/new"
  end

  post "/signup" do
    binding.pry
    brewery = Brewery.new(params)
    if brewery.save
      session[:user_id] = brewery[:id]
      redirect "/login"
    else
      redirect "/signup"
    end
  end

  get "/login" do

    erb :"/breweries/login"
  end

  post "/login" do

    redirect "/breweries/#{@name.id}"
  end



end
