class PurchasesController < ApplicationController

  def show
    @purchase = Purchase.find_by(uuid: params[:id])
  end
end