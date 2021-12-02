class RemoveStatusFromExame < ActiveRecord::Migration[5.2]
  def change
    remove_column :exames, :status, :boolean
  end
end
