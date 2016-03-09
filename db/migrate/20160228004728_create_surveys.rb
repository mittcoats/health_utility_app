class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title
      t.text :description
      t.text :instructions
      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
