class AddPaymentOrNotForScore < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :isbuy, :boolean, default: false

  end
end
