class Team < ApplicationRecord

  belongs_to :school
  has_many :games_as_team_a, :class_name => "Game", :foreign_key => "team_a_id", :dependent => :destroy
  has_many :games_as_team_b, :class_name => "Game", :foreign_key => "team_b_id", :dependent => :destroy
  belongs_to :tournament

  validates :tournament_id, :presence => true
  validates :school_id, :presence => true

  def team_name
    self.tournament.name + " - " + self.school.name
  end

end
