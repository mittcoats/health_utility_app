class Answer < ActiveRecord::Base
  belongs_to :option
  belongs_to :patient_id
end
