class Survey < ActiveRecord::Base
  belongs_to :user
  
  has_many :sections
  accepts_nested_attributes_for :sections, allow_destroy: true
  
  validates :title, :description, :instructions, presence: true
end
