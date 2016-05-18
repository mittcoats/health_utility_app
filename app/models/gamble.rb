class Gamble < ActiveRecord::Base
  belongs_to :section
  has_many :gamble_results
  
end
