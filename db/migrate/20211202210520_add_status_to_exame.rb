class AddStatusToExame < ActiveRecord::Migration[5.2]
  def change
    add_column :exames, :status, :integer
  end
end
