class SurveyInstance < ActiveRecord::Base
  belongs_to :survey
  belongs_to :patient
  
  def took_gamble(gamble_id)
    GambleResult.where(survey_instance_id: self.id.to_s, gamble_id: gamble_id).length > 0
  end
  
end
