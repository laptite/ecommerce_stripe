class PurchaseMailer < ActionMailer::Base
  layout 'email'

  default from: "One Month Stripe Payments <payments@onemonth.com>"

  def receipt(purchase)
    @purchase = purchase
    @product  = Product.find(purchase.product_id)
    mail to: @purchase.email, subject: 'Thanks for your purchase!'
  end
end