class CreateLaboratoriosExames < ActiveRecord::Migration[5.2]
  def change
    create_table :laboratorios_exames do |t|
      t.references :laboratorio, foreign_key: true
      t.references :exame, foreign_key: true

      t.timestamps
    end
  end
end
