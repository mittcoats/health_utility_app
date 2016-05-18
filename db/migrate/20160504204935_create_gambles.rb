class CreateGambles < ActiveRecord::Migration
  def change
    create_table :gambles do |t|
      t.string :title
      t.text :description
      t.text :instructions
      t.integer :interval
      t.text :good_outcome
      t.text :bad_outcome

      t.timestamps null: false
    end
  end
end
