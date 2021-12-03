class CreateExames < ActiveRecord::Migration[5.2]
  def change
    create_table :exames do |t|
      t.string :nome
      t.integer :tipo
      t.boolean :status

      t.timestamps
    end
  end
end
