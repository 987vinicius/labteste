class RemoveStatusFromLaboratorio < ActiveRecord::Migration[5.2]
  def change
    remove_column :laboratorios, :status, :boolean
  end
end
