class PagesController < ApplicationController

  def home
    @product = Product.find_by(sku: "GROHACK1")
  end

end
