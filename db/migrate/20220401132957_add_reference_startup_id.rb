class AddReferenceStartupId < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :startup, foreign_key:true, on_delete: :cascade
    add_reference :order_timers, :startup, foreign_key:true, on_delete: :cascade
  end
end
