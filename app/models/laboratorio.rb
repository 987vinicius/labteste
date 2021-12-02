class Laboratorio < ApplicationRecord
  enum status: %i[ativo inativo].freeze
end
