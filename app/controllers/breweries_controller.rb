class BreweriesController < ApplicationController

  get "/signup" do
    erb :"/breweries/new"
  end

  post "/signup" do
    @brewery = Brewery.new(params)
    if !Brewery.all.where({email:params[:email]}).empty?
      flash.now[:notice] = "The email you entered is already taken. Please use another email address. OR please log in if you alerady have an account."
      erb :"/breweries/new"
    elsif @brewery.save
      session[:brewery_id] = @brewery.id
      redirect "/breweries/#{@brewery.id}"
    else
      flash.now[:notice] = @brewery.errors.full_messages
      erb :"/breweries/new"
    end
  end

  get "/login" do
    if logged_in?
      redirect "/breweries"
    else
      erb :"/breweries/login"
    end
  end

  post "/login" do
    @brewery = Brewery.find_by(email: params[:email])
    if @brewery && @brewery.authenticate(params[:password])
      session[:brewery_id] = @brewery.id

      flash.now[:notice] = "You're successfully logged in!"
      erb :"/breweries/show"

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
    redirect_to_logged_in
    @brewery = Brewery.find_by_id(params[:id])
    current_user
    erb :"/breweries/show"
  end

end
