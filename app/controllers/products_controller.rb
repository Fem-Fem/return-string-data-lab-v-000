class ProductsController < ApplicationController

  def create
    # binding.pry
    @product = Product.create(product_params)
    redirect_to products_path
  end

  def inventory
    @product = Product.find(params[:id])
    @value = true
    binding.pry
    if @product.inventory == 0
      @value = false
    end
    render plain: @value
  end

  def description
    product = Product.find(params[:id].to_i)
    render plain: product.description
  end

  def products
    @products = Product.all
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :inventory, :description)
  end



end
