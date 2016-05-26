class UpdateSurveyInstances < ActiveRecord::Migration
  def change
    remove_column :survey_instances, :gamble_result_id, :interger
    remove_column :survey_instances, :answer_id, :integer
    add_column :survey_instances, :survey_id, :integer
    add_index :survey_instances, :survey_id   
  end
end
