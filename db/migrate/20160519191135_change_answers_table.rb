class ChangeAnswersTable < ActiveRecord::Migration
  def change
    rename_column :answers, :patient_id_id, :survey_instance_id
  end
end
