class ProductsController < ApplicationController

  def new
    @product = Product.new()
  end

  def create
    @product = Product.new(product_params)
    @product.save
  end

  def index
    @products = Product.all
  end

  def edit
    @product = Product.find(1)
  end

  def update
    @product = Product.find(1)
    @product.update_attributes(product_params)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :amount, :status)
  end

end
