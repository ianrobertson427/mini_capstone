class Api::ProductsController < ApplicationController
  def index
    render "first_page.json.jb"
  end
  def sales
    @products = Product.all
    render "sales_page.json.jb"
  end
end
