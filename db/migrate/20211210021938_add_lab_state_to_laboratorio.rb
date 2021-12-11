class AddLabStateToLaboratorio < ActiveRecord::Migration[5.2]
  def change
    add_column :laboratorios, :lab_state, :integer
  end
end
