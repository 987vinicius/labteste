class AddLaboratorioItemToExame < ActiveRecord::Migration[5.2]
  def change
    add_reference :exames, :laboratorio_item, foreign_key: true
  end
end
