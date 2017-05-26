class Tournament < ApplicationRecord

  has_many :teams, :dependent => :destroy

  validates :name, :presence => true
  validates :name, :uniqueness => { :scope => [:date] }
  validates :date, :presence => true
  
end
