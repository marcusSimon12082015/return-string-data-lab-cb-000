class ProductsController < ApplicationController

  def create 

  end

  private 
  def product_params 
    params.require(:product).permit(:name,:price,:inventory,:description)
  end 
end
