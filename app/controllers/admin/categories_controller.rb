class Admin::CategoriesController < ApplicationController
  http_basic_authenticate_with name: ENV["USERNAME"], password: ENV["PASSWORD"]
  def index
    @products = Product.order(id: :desc).all
    @category = Category.order(id: :desc).all
  end

  def create
    # @category = Category.order(id: :desc).all
   
    Category.find_or_create_by! name: params[:category][:name]
    redirect_to admin_categories_path
  end

  def new
  end

end
