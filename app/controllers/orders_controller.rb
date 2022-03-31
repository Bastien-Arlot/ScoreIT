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

        @order = Order.new(
          'username' => current_user.username,
          'email' => current_user.email,
          'startup_id'=> current_user.startup.id,
          'date' => "#{DateTime.current.to_date}"
        )

        if @order.save
          flash[:notice] = "Paiement validé"
          render 'success'
        else
          flash[:notice] = "Error, fail to save."
          redirect_to startup_path(current_user.startup.id)
        end
      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to startup_path(current_user.startup.id)
      end#
    end


  end
