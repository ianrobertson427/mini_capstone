class Api::ProductsController < ApplicationController
  
  @recipe = Recipe.find_by(id: params[:id])
  render 'create.json.jb'
end

#def is_discounted
#if price < 10
#end

#end

def create
  # make a new recipe in the db
  @recipe = Recipe.new(   

    chef: params[:chef],
    title: params[:title],
    ingredients: params[:ingredients],
    prep_time: params[:prep_time],
    directions: params[:directions],
    image_url: params[:image_url],
    price: params[:price]

  )
  
  @recipe.save
  render 'create.json.jb'
end