class Api::ProductsController < ApplicationController
  def index
    render "first_page.json.jb"
  end
  def sales
    render "sales_page.json.jb"
  end
end
