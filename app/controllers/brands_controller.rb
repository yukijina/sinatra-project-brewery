class BrandsController < ApplicationController

  get "/brands" do
    redirect_to_logged_in
    current_user
    @brands = Brand.all
    erb :"/brands/brands"
  end

  #CREATE
  get "/brands/new" do
    redirect_to_logged_in
    current_user
    erb :"/brands/new"
  end

  post "/brands" do
    brand = current_user.brands.create(params)
    redirect "/brands/#{brand.id}"
  end

  #SHOW
  get "/brands/:id" do
    redirect_to_logged_in
    @brand = Brand.find_by_id(params[:id])
    erb :"/brands/show"
  end

  #EDIT
  get "/brands/:id/edit" do
    
  end

  patch "/brands/:id" do

  end



  #DELETE
  delete "brands/:id" do

  end

end
