class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.string :owner, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
