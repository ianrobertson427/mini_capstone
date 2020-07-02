class Api::ProductsController < ApplicationController

  def index
    @description = Product.first
    render "first_page.json.jb"
  end

  def sonor_example
    @new_drums = params["product"]
    @any_product = Product.find_by(id: @new_drums)
    render "sonor_ex.json.jb"
  end

  def sales
    @products = Product.all
    render "sales_page.json.jb"
  end

  def objects    
    render "any_single_product.json.jb"
  end

end
