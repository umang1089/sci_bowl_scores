class Tournament < ApplicationRecord

  has_many :teams, :dependent => :destroy

  has_many :games, :through => :teams, :source => :games_as_team_a

  validates :name, :presence => true
  validates :name, :uniqueness => { :scope => [:date] }
  validates :date, :presence => true

end
