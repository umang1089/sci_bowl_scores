class School < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable


  has_many :teams, :dependent => :destroy
  has_many :games_as_team_a, :through => :teams, :source => :games_as_team_a
  has_many :games_as_team_b, :through => :teams, :source => :games_as_team_b

  validates :region_name, :presence => true
  validates :name, :presence => true
  validates :name, :uniqueness => { :scope => [:region_name] }

end
