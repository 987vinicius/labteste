class CreateLaboratorioItems < ActiveRecord::Migration[5.2]
  def change
    create_table :laboratorio_items do |t|
      t.references :group_lab, foreign_key: true

      t.timestamps
    end
  end
end
