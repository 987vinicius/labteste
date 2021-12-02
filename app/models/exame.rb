class Exame < ApplicationRecord
  enum tipo: %i[analise imagem].freeze
  enum status: %i[ativo inativo].freeze
end
