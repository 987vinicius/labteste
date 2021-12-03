class AddStatusToLaboratorio < ActiveRecord::Migration[5.2]
  def change
    add_column :laboratorios, :status, :integer
  end
end
