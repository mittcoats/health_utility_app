class CreateSurveyInstances < ActiveRecord::Migration
  def change
    create_table :survey_instances do |t|
      t.references :answer, index: true, foreign_key: true
      t.references :gamble_result, index: true, foreign_key: true
      t.references :patient, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
