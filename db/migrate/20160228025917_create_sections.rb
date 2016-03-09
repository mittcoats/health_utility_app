class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :title
      t.text :description
      t.text :instructions
      t.belongs_to :survey, index: true 
      
      t.timestamps null: false
    end
  end
end
