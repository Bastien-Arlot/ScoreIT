class CreateOrderTimers < ActiveRecord::Migration[5.2]
  def change
    create_table :order_timers do |t|
      t.string :email
      t.string :username
      t.string :date
      t.timestamps
    end
  end
end
