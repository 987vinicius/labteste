class AddLaboratorioToExame < ActiveRecord::Migration[5.2]
  def change
    add_reference :exames, :laboratorio, foreign_key: true
  end
end
