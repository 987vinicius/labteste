class CreateExames < ActiveRecord::Migration[5.2]
  def change
    create_table :exames do |t|
      t.string :nome
      t.string :tipo_exame

      t.timestamps
    end
  end
end
