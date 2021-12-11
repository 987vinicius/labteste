class Laboratorio < ApplicationRecord
  belongs_to :laboratorio_item, dependent: :destroy, optional: true

	has_many :exames, through: :laboratorio

  accepts_nested_attributes_for :exames, reject_if: :all_blank, allow_destroy: true

  enum lab_state: %i[ativo inativo].freeze
end
