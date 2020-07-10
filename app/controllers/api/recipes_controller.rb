
class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.json.jb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    if @product.save
      # happy path
      render 'show.json.jb'
    else
      # sad path
      # render 'errors.json.jb', status: :unprocessable_entity
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end