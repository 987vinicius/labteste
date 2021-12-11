class AddExameTipoToExame < ActiveRecord::Migration[5.2]
  def change
    add_column :exames, :exame_tipo, :integer
  end
end
