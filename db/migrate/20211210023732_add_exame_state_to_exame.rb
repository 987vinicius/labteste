class AddExameStateToExame < ActiveRecord::Migration[5.2]
  def change
    add_column :exames, :exame_state, :integer
  end
end
