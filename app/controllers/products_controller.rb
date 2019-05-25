class ProductsController < ApplicationController
  before_action :set_product,:only[:inventory]
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def inventory
    pry
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
  def product_params
    params.require(:product).permit(:name,:price,:inventory,:description)
  end
end
