class CreateGroupLabs < ActiveRecord::Migration[5.2]
  def change
    create_table :group_labs do |t|

      t.timestamps
    end
  end
end
