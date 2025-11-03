class ProductsController < ApplicationController
  before_action :set_product, except: %i[index new create]
  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
    render layout: "modal"
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: "Product successfully added!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    render layout: "modal"
  end

  def update
    if @product.update(product_params)
      redirect_to products_path, notice: "Product successfully updated!"
    else
      render :edit, status: :unprocessable_entity, layout: "modal"
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: "Product was successfully destroyed."
  end

  private
  def product_params
    params.expect(product: [ :name ])
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
