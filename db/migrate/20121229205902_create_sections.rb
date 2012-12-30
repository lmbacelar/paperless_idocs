class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :acronym
      t.string :name
      t.integer :position
      t.text :content
      t.string :ancestry

      t.timestamps
    end
    add_index :sections, :position
    add_index :sections, :ancestry
  end
end
