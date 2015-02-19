class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
    add_index :elements, :name, unique: true
  end
end
