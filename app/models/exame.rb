class Exame < ApplicationRecord
  has_and_belongs_to_many :laboratorios, join_table: "laboratorios_exames"

  enum tipo: %i[analise imagem].freeze
  enum status: %i[ativo inativo].freeze
end
