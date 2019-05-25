class ProductsController < ApplicationController

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path(@product)
    else
    end

  end

  private
  def product_params
    params.require(:product).permit(:name,:price,:inventory,:description)
  end
end
