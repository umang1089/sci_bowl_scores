class Game < ApplicationRecord

  has_many :questions, :dependent => :destroy
  belongs_to :team_a, :class_name => "Team"
  belongs_to :team_b, :class_name => "Team"

  has_one :school_as_team_a, :through => :team_a, :source => :school
  has_one :school_as_team_b, :through => :team_b, :source => :school
  has_one :tournament, :through => :team_a, :source => :tournament


  validates :team_b_id, :presence => true
  validates :team_a_id, :presence => true

  validate :same_tournament

  def same_tournament
    unless Team.find(team_a_id).tournament_id == Team.find(team_b_id).tournament_id
      errors.add(:team_b, "must be in the same tournament as your first team")
    end
  end

end
