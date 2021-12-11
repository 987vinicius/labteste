class GroupLab < ActiveRecord::Base
  has_many :laboratorios, -> {order(laboratorio: :desc)}

  has_many :laboratorio_items
  has_many :exames, through: :laboratorio_items

  accepts_nested_attributes_for :laboratorios, allow_destroy: true
  accepts_nested_attributes_for :laboratorio_items, allow_destroy: true
  accepts_nested_attributes_for :exames, allow_destroy: true

end
