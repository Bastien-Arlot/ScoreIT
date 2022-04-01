class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :email
      t.string :username
      t.string :date
      t.timestamps
    end
  end
end
