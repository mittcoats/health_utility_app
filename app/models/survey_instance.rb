class SurveyInstance < ActiveRecord::Base
  has_many :answers
  has_many :gamble_results
end
