class Api::ProductsController < ApplicationController
  def index
    @description = Product.first
    render "first_page.json.jb"
  end
  def sales
    @products = Product.all
    render "sales_page.json.jb"
  end
end
