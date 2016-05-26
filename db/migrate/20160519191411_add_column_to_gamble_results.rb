class AddColumnToGambleResults < ActiveRecord::Migration
  def change
    add_column :gamble_results, :survey_instance_id, :string
  end
end
