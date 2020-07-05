class Api::ProductsController < ApplicationController
  
  @recipe = Recipe.find_by(id: params[:id])
  render 'show.json.jb'
end

def create
  # make a new recipe in the db
  @recipe = Recipe.new(      
    chef: params[:chef],
    title: params[:title],
    ingredients: params[:ingredients],
    prep_time: params[:prep_time],
    directions: params[:directions],
    image_url: params[:image_url]
  )
  @recipe.save
  render 'show.json.jb'
end