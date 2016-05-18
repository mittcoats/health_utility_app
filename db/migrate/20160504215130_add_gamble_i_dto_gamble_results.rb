class AddGambleIDtoGambleResults < ActiveRecord::Migration
  def change
    add_column :gamble_results, :gamble_id, :integer
  end
end
