class School < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable


  has_many :teams, :dependent => :destroy


  validates :region_name, :presence => true
  validates :name, :presence => true
  validates :name, :uniqueness => { :scope => [:region_name] }
  
end
