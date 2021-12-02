class Exame < ApplicationRecord
  enum tipo: %i[analise imagem].freeze
end
