class Option < ActiveRecord::Base
  belongs_to :question
  
  has_many :answers
  accepts_nested_attributes_for :answers, allow_destroy: true
  
  validates :content, presence: true
end
