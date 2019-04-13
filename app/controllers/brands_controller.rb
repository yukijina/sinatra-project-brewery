class BrandsController < ApplicationController

  get "/brands" do
    redirect_to_logged_in
    current_user
    @brands = Brand.all

    @ale = []
    @ipa = []
    @lager = []
    @pilsner = []
    @stout = []
    @others = []
    @brands.each do|brand|
      if brand.style.downcase.include?("ale")
        @ale << brand
      elsif brand.style.downcase.include?("ipa")
        @ipa << brand
      elsif brand.style.downcase.include?("lager")
        @lager << brand
      elsif brand.style.downcase.include?("pilsner")
        @pilsner << brand
      elsif brand.style.downcase.include?("stout")
        @stout << brand
      else
        @others << brand
      end
    end


    erb :"/brands/brands"
  end

  #CREATE
  get "/brands/new" do
    redirect_to_logged_in
    current_user
    erb :"/brands/new"
  end

  post "/brands" do
    brand = current_user.brands.build(params)
    brand.save
    redirect "/brands/#{brand.id}"
  end

  #SHOW
  get "/brands/:id" do
    redirect_to_logged_in
    current_user

    if @brand = Brand.find_by_id(params[:id])
      erb :"/brands/show"
    else
      no_matching_page
      erb :"/brands/brands"
    end
  end

  #EDIT
  get "/brands/:id/edit" do
    redirect_to_logged_in
    current_user
    if @brand = Brand.find_by_id(params[:id])
      erb :"/brands/edit"
    else
      no_matching_page
      erb :"/brands/edit"
    end
  end

  patch "/brands/:id/edit" do
    brand = Brand.find_by_id(params[:id])
    if current_user.id == brand.brewery.id
      brand.update(params[:brand])
      redirect "/brands/#{brand.id}"
    else
      redirect "/brands"
    end
  end

  #DELETE
  delete "/brands/:id" do
    brand = Brand.find_by_id(params[:id])
     if brand && brand.brewery.id == session[:brewery_id]
      brand.delete
      redirect "/breweries/#{current_user[:id]}"
    else
      redirect "/login"
    end
  end

end
