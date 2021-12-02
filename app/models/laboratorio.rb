class Laboratorio < ApplicationRecord
  has_and_belongs_to_many :laboratorios, join_table: "laboratorios_exames"

  enum status: %i[ativo inativo].freeze
end
