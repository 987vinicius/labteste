class Exame < ApplicationRecord
  belongs_to :laboratorio_item, optional: true
  belongs_to :laboratorio

  validates :nome, :laboratorio, presence: true

  enum exame_state: %i[ativo inativo].freeze
  enum exame_tipo: %i[analise imagem].freeze
end
