class AddTipoToExame < ActiveRecord::Migration[5.2]
  def change
    add_column :exames, :tipo, :integer
  end
end
