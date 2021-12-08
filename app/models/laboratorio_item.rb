class LaboratorioItem < ApplicationRecord
  belongs_to :group_lab

  has_many :exames
  has_many :laboratorios, through: :laboratorio

  accepts_nested_attributes_for :exames, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :laboratorios, reject_if: :all_blank, allow_destroy: true

  validates_associated :exames
end
