require 'securerandom'

class ChargesController < ApplicationController

  def create
    product = Product.find_by(sku: "GROHACK2")

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      card:  params[:stripeToken],
      plan:  "GROHACK2"
    )

    # Subscribe customer
    # customer = Stripe::Customer.create(
    #   email: params[:stripeEmail],
    #   card:  params[:stripeToken],
    #   plan:  "GROHACK2"
    # )

    charge = Stripe::Charge.create(
      customer:    customer.id,
      amount:      product.price_in_cents,
      description: 'Rails Stripe customer',
      currency:    'usd'
    )

    purchase = Purchase.create(
      email:       params[:stripeEmail], 
      card:        params[:stripeToken],
      amount:      product.price_in_cents,
      description: product.full_description,
      currency:    charge.currency,
      customer_id: customer.id,
      product_id:  product.id,
      uuid:        SecureRandom.uuid
    )

    # Subscribe customer
    # Comment out charge and hard-code currency
    # purchase = Purchase.create(
    #   ...
    #   currency:    'usd',
    #   ...
    # )

    redirect_to purchase

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end

end
