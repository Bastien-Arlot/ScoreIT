class AddColumnNumberCertificateToScoreTable < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :certificatenumber, :string
  end
end
