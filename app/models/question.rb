class Question < ActiveRecord::Base
  belongs_to :section
  
  has_many :options
  accepts_nested_attributes_for :options, allow_destroy: true
  
  validates :content, presence: true
end
