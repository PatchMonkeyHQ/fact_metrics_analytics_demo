class Dimension::ProductsController < ApplicationController
  before_action :set_dimension_product, only: %i[ show edit update destroy ]

  # GET /dimension/products or /dimension/products.json
  def index
    @dimension_products = Dimension::Product.all
  end

  # GET /dimension/products/1 or /dimension/products/1.json
  def show
  end

  # GET /dimension/products/new
  def new
    @dimension_product = Dimension::Product.new
  end

  # GET /dimension/products/1/edit
  def edit
  end

  # POST /dimension/products or /dimension/products.json
  def create
    @dimension_product = Dimension::Product.new(dimension_product_params)

    respond_to do |format|
      if @dimension_product.save
        format.html { redirect_to @dimension_product, notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @dimension_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dimension_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dimension/products/1 or /dimension/products/1.json
  def update
    respond_to do |format|
      if @dimension_product.update(dimension_product_params)
        format.html { redirect_to @dimension_product, notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @dimension_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dimension_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dimension/products/1 or /dimension/products/1.json
  def destroy
    @dimension_product.destroy!

    respond_to do |format|
      format.html { redirect_to dimension_products_path, status: :see_other, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dimension_product
      @dimension_product = Dimension::Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dimension_product_params
      params.require(:dimension_product).permit(:product_description, :brand_description, :subcategory_description, :category_description, :department_description, :fat_content)
    end
end
