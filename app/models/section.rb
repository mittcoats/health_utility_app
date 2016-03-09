class Section < ActiveRecord::Base
  belongs_to :survey
  

  has_many :questions
  accepts_nested_attributes_for :questions, allow_destroy: true
  
  validates :title, :description, :instructions, presence: true
end
