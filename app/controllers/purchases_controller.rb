class PurchasesController < ApplicationController

  def show
    @purchase = Purchase.find_by(uuid: params[:id])
    @product  = Product.find_by(id: @purchase.product_id)
  end
end
