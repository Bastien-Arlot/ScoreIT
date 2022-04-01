class OrderTimersController < ApplicationController
  def create
    @stripe_amount = 15000
    begin
      customer = Stripe::Customer.create({
                                           email: params[:stripeEmail],
                                           source: params[:stripeToken],
                                         })
      charge = Stripe::Charge.create({
                                       customer: customer.id,
                                       amount: @stripe_amount,
                                       description: "Achat d'un pass notation",
                                       currency: 'eur',
                                     })

      @order = OrderTimer.new(
        'username' => current_user.username,
        'email' => current_user.email,
        'startup_id' => current_user.startup.id,
        'date' => "#{DateTime.current.to_date}"
      )

      if @order.save
        @startup = current_user.startup
        @startup.update(havecredit: true)
        render 'success'
      else
        flash[:notice] = "Erreur, échec de la sauvegarde."
        redirect_to startup_path(current_user.startup.id)
      end
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to startup_path(current_user.startup.id)
    end
  end
end
