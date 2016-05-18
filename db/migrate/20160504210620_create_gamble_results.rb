class CreateGambleResults < ActiveRecord::Migration
  def change
    create_table :gamble_results do |t|
      t.integer :final_good_outcome_percent

      t.timestamps null: false
    end
  end
end
