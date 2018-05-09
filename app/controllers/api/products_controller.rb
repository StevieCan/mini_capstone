class Api::ProductsController < ApplicationController
  def first_shoe_action
    @product = Product.find(1)
    render "first_shoe_action.json.jbuilder" 
  end
  def all_shoes_action
    @products = Product.all
    render "all_shoes_action.json.jbuilder"
  end
end
