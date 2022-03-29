class OrdersController < ApplicationController

  def create
    @stripe_amount = 3500
    begin customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
      })
      charge = Stripe::Charge.create({
        customer: customer.id,
        amount: @stripe_amount,
        description: "Achat d'un produit",
        currency: 'eur',
        })
      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to startups_path
      end#
    end
  end
