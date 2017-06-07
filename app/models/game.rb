class Game < ApplicationRecord

  has_many :questions, :dependent => :destroy
  belongs_to :team_a, :class_name => "Team"
  belongs_to :team_b, :class_name => "Team"

  has_one :school_as_team_a, :through => :team_a, :source => :school
  has_one :school_as_team_b, :through => :team_b, :source => :school
  has_one :tournament, :through => :team_a, :source => :tournament


  validates :team_b_id, :presence => true
  validates :team_a_id, :presence => true


  # validates :same_tournament
  #
  # def same_tournament
  #   errors.add(:team_a, "must be in the same tournament") if :team_a.tournament != :team_b.tournament
  # end
end
