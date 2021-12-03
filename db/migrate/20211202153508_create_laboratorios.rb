class CreateLaboratorios < ActiveRecord::Migration[5.2]
  def change
    create_table :laboratorios do |t|
      t.string :nome
      t.string :cnpj
      t.string :rua
      t.string :bairro
      t.string :logradouro
      t.integer :numero
      t.string :complemento
      t.integer :cep
      t.string :cidade
      t.string :estado
      t.boolean :status

      t.timestamps
    end
  end
end
