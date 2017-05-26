class Game < ApplicationRecord

  has_many :questions, :dependent => :destroy
  belongs_to :team_a, :class_name => "Team"
  belongs_to :team_b, :class_name => "Team"


  validates :team_b_id, :presence => true
  validates :team_a_id, :presence => true
  
end
