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
    redirect_to_logged_in
    @brand = Brand.find_by_id(params[:id])
    erb :"/brands/edit"
  end

  patch "/brands/:id/edit" do
    brand = Brand.find_by_id(params[:id])
    brand.update(name: params[:name], style: params[:style], ABV:params[:ABV])

    redirect "/brands/#{brand.id}"
  end

  #DELETE
  delete "/brands/:id" do
    brand = Brand.find_by_id(params[:id])

    if brand && brand.brewery_id == session.user_id
      brand.delete
      redirect "/brands"
    else
      redirect "/login"
    end
  end


end
