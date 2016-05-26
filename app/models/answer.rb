class Answer < ActiveRecord::Base
  belongs_to :option
  belongs_to :survey_instance
  
  def self.save_answers(survey_instance_id, option_ids)
    # check if the option is part of a question that was already answered in this survey instance
    
    # if this question was answered previously, this means they are changing the answer
      # then replace the option id
    # otherwise this is a new question being answered
      # create a new answer instead 

  end
  
  
end
