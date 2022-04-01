class AddCreditStartup < ActiveRecord::Migration[5.2]
  def change
    add_column :startups, :havecredit, :boolean, default: false
  end
end
