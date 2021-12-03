class Laboratorio < ApplicationRecord
  has_and_belongs_to_many :exames, join_table: "laboratorios_exames"

  enum status: %i[ativo inativo].freeze
end
