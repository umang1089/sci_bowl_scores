# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed school data

School.destroy_all

s1 = School.new
s1.email = "farragut@example.com"
s1.password = "12341234"
s1.password_confirmation = "12341234"
s1.name = "Farragut"
s1.city = "Knoxxville"
s1.state = "Tennessee"
s1.region_name = "Tennessee"
s1.save

s2 = School.new
s2.email = "TJHSST@example.com"
s2.password = "12341234"
s2.password_confirmation = "12341234"
s2.name = "Thomas Jefferson"
s2.city = "Fairfax"
s2.state = "Virginia"
s2.region_name = "Virginia"
s2.save

s3 = School.new
s3.email = "miraloma@example.com"
s3.password = "12341234"
s3.password_confirmation = "12341234"
s3.name = "Mira Loma"
s3.city = "Mira Loma"
s3.state = "California"
s3.region_name = "California"
s3.save

s4 = School.new
s4.email = "lexington@example.com"
s4.password = "12341234"
s4.password_confirmation = "12341234"
s4.name = "Lexington"
s4.city = "Lexington"
s4.state = "Massachusetts"
s4.region_name = "Massachusetts"
s4.save

puts "#{School.count} schools in the datbase"

# Seed tournament data

Tournament.destroy_all

t1 = Tournament.new
t1.name = "National Finals 2017"
t1.location = "Bethesda, MD"
t1.date = "4/28/2017"
t1.save

puts "#{Tournament.count} tournaments in the datbase"

# Seed team data

Team.destroy_all

e1 = Team.new
e1.school_id = s1.id
e1.tournament_id = t1.id
e1.player_1_name = "Herman Juste"
e1.player_2_name = "Frank Maui"
e1.player_3_name = "Thei Yi"
e1.player_4_name = "Tex Maria"
e1.player_5_name = "Shiv Rana"
e1.save

e2 = Team.new
e2.school_id = s2.id
e2.tournament_id = t1.id
e2.player_1_name = "Zaccai Bradan"
e2.player_2_name = "Ellis Killian"
e2.player_3_name = "Ahmed Niklas"
e2.player_4_name = "Jen Mubin"
e2.player_5_name = "Michael Chang"
e2.save

e3 = Team.new
e3.school_id = s3.id
e3.tournament_id = t1.id
e3.player_1_name = "Herman Rolf"
e3.player_2_name = "Peter Finnegan"
e3.player_3_name = "Karen Llewyn"
e3.player_4_name = "Alfwin Waldo"
e3.player_5_name = "Ian Jefferson"
e3.save

e4 = Team.new
e4.school_id = s4.id
e4.tournament_id = t1.id
e4.player_1_name = "Marty Ellis"
e4.player_2_name = "Maria Lopez"
e4.player_3_name = "Lamar Carson"
e4.player_4_name = "Andres Rodgers"
e4.player_5_name = "Thomas Singh"
e4.save


puts "#{Team.count} teams in the datbase"
