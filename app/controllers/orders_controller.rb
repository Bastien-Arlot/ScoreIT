class OrdersController < ApplicationController

  def create
    @stripe_amount = 3500
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

      @order = Order.new(
        'username' => current_user.username,
        'email' => current_user.email,
        'startup_id' => current_user.startup.id,
        'date' => "#{DateTime.current.to_date}"
      )

      if @order.save
        select_score()
        @score.update(isbuy: true)
        render 'success'
      else
        flash[:notice] = "Erreur, échec de la sauvegarde."
        redirect_to startup_path(current_user.startup.id)
      end
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to startup_path(current_user.startup.id)
    end #
  end

  private

  def select_score

    @score_completed = []
    @scores = Score.all
    @scores.each do |element|
      if element.startup_id == current_user.startup.id && !element.name.nil?
        @score_completed << element
      end
    end

    @score = @score_completed.last

  end

end
