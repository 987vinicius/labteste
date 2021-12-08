class Exame < ApplicationRecord
  belongs_to :laboratorio_item, optional: true
  belongs_to :laboratorio, optional: true

  validates :nome, :tipo_exame, presence: true
end
