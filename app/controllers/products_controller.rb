class ProductsController < ApplicationController

  def create
    # binding.pry
    @product = Product.create(product_params)
    redirect_to products_path
  end

  def inventory
    @product = Product.find(params[:id])
    if @product.inventory == nil
      reutrn false
    else
      return true
    end
  end

  def products
    @products = Product.all
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :inventory, :description)
  end



end
