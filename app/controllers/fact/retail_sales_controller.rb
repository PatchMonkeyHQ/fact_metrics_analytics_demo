class Fact::RetailSalesController < ApplicationController
  before_action :set_fact_retail_sale, only: %i[ show edit update destroy ]

  # GET /fact/retail_sales or /fact/retail_sales.json
  def index
    @fact_retail_sales = Fact::RetailSale.all
  end

  # GET /fact/retail_sales/1 or /fact/retail_sales/1.json
  def show
  end

  # GET /fact/retail_sales/new
  def new
    @fact_retail_sale = Fact::RetailSale.new
  end

  # GET /fact/retail_sales/1/edit
  def edit
  end

  # POST /fact/retail_sales or /fact/retail_sales.json
  def create
    @fact_retail_sale = Fact::RetailSale.new(fact_retail_sale_params)

    respond_to do |format|
      if @fact_retail_sale.save
        format.html { redirect_to @fact_retail_sale, notice: "Retail sale was successfully created." }
        format.json { render :show, status: :created, location: @fact_retail_sale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fact_retail_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fact/retail_sales/1 or /fact/retail_sales/1.json
  def update
    respond_to do |format|
      if @fact_retail_sale.update(fact_retail_sale_params)
        format.html { redirect_to @fact_retail_sale, notice: "Retail sale was successfully updated." }
        format.json { render :show, status: :ok, location: @fact_retail_sale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fact_retail_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fact/retail_sales/1 or /fact/retail_sales/1.json
  def destroy
    @fact_retail_sale.destroy!

    respond_to do |format|
      format.html { redirect_to fact_retail_sales_path, status: :see_other, notice: "Retail sale was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fact_retail_sale
      @fact_retail_sale = Fact::RetailSale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fact_retail_sale_params
      params.require(:fact_retail_sale).permit(:date, :dimension_product_id, :dimension_store_id, :pos_transaction_number, :sales_quantity, :regular_unit_price, :discount_unit_price, :net_unit_price, :extended_discount_dollar_amount, :extended_sales_dollar_amount, :extended_cost_dollar_amount, :extended_gross_profit_dollar_amount)
    end
end
