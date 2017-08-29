class AddPriorityToCreateItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :priority, :boolean
  end
end
