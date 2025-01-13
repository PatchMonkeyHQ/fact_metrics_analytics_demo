class RetailSaleMetricsController < ApplicationController
  def index
    @metrics = Fact::RetailSale.all_metrics
  end
end
