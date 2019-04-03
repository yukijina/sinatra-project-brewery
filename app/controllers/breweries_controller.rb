class BreweriesController < ApplicationController

  get "/signup" do
    # if logged_in?
    #   redirect "/login"
    #   ## redirect to brewery page
    # else
      erb :"/breweries/new"
    #end
  end

  post "/signup" do
    @brewery = Brewery.new(params)
    #Can't sign up if there is the same email in the db
    if !Brewery.all.where({email:params[:email]}).empty?
       redirect "/signup"
    elsif @brewery.save
      session[:brewery_id] = @brewery.id
      redirect "/breweries/#{@brewery.id}"
    else
      flash.now[:notice] = @brewery.errors.full_messages
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
      flash.now[:notice] = "Email and password do not match"
      erb :"breweries/login"
      #flash.now => erb
    end
  end

  get "/logout" do
    if logged_in?
      session.clear
      redirect "/"
    else
      redirect "/login"
    end
  end

  get "/breweries" do
    redirect_to_logged_in
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
