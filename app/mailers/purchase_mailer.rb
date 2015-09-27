class PurchaseMailer < ActionMailer::Base
  layout 'email'

  default from: "One Month Stripe Payments <payments@onemonth.com>"

  def receipt(purchase)
    @purchase = purchase
    mail to: @purchase.email, subject: 'Thanks for your purchase!'
  end
end