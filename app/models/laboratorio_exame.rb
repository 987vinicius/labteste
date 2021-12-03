class LaboratorioExame < ApplicationRecord
  t.belongs_to :laboratorio, index: true
  t.belongs_to :exame, index: true
end
