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

t2 = Tournament.new
t2.name = "National Finals 2016"
t2.location = "Bethesda, MD"
t2.date = "5/4/2016"
t2.save

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

e5 = Team.new
e5.school_id = s1.id
e5.tournament_id = t2.id
e5.player_1_name = "Michael Jones"
e5.player_2_name = "Geoff Ramsey"
e5.player_3_name = "Gavin Free"
e5.player_4_name = "Ryan Haywood"
e5.player_5_name = "Jeremy Dooley"
e5.save

e6 = Team.new
e6.school_id = s2.id
e6.tournament_id = t2.id
e6.player_1_name = "Shawn Spencer"
e6.player_2_name = "Burton Guster"
e6.player_3_name = "Juliet O'Hara"
e6.player_4_name = "Carlton Lassiter"
e6.player_5_name = "Karen Vick"
e6.save

e7 = Team.new
e7.school_id = s3.id
e7.tournament_id = t2.id
e7.player_1_name = "James Willems"
e7.player_2_name = "Adam Kovic"
e7.player_3_name = "Bruce Greene"
e7.player_4_name = "Lawrence Sonntag"
e7.player_5_name = "Matt Peake"
e7.save

e8 = Team.new
e8.school_id = s4.id
e8.tournament_id = t2.id
e8.player_1_name = "Philip Fry"
e8.player_2_name = "Bender Rodriguez"
e8.player_3_name = "Turanga Leela"
e8.player_4_name = "Hermes Conrad"
e8.player_5_name = "John Zoidberg"
e8.save


puts "#{Team.count} teams in the datbase"

# Recreate games and questions data
# Games below simulated in Excel

Game.destroy_all
puts "Game data destroyed!"

Question.destroy_all
puts "Question data destroyed!"

g1 = Game.new
g1.team_a_id = e1.id
g1.team_b_id = e2.id
g1.team_a_score=130
g1.team_b_score=36
g1.save

  q1 = Question.new
  q1.game_id = g1.id
  q1.team_a_tossup = 0
  q1.team_a_bonus = 0
  q1.team_a_penalty = 0
  q1.team_b_tossup = 4
  q1.team_b_bonus = 0
  q1.team_b_penalty = 0
  q1.save
  q2 = Question.new
  q2.game_id = g1.id
  q2.team_a_tossup = 0
  q2.team_a_bonus = 0
  q2.team_a_penalty = 0
  q2.team_b_tossup = 4
  q2.team_b_bonus = 0
  q2.team_b_penalty = 4
  q2.save
  q3 = Question.new
  q3.game_id = g1.id
  q3.team_a_tossup = 4
  q3.team_a_bonus = 10
  q3.team_a_penalty = 0
  q3.team_b_tossup = 0
  q3.team_b_bonus = 0
  q3.team_b_penalty = 4
  q3.save
  q4 = Question.new
  q4.game_id = g1.id
  q4.team_a_tossup = 4
  q4.team_a_bonus = 0
  q4.team_a_penalty = 0
  q4.team_b_tossup = 0
  q4.team_b_bonus = 0
  q4.team_b_penalty = 0
  q4.save
  q5 = Question.new
  q5.game_id = g1.id
  q5.team_a_tossup = 0
  q5.team_a_bonus = 0
  q5.team_a_penalty = 0
  q5.team_b_tossup = 4
  q5.team_b_bonus = 0
  q5.team_b_penalty = 0
  q5.save
  q6 = Question.new
  q6.game_id = g1.id
  q6.team_a_tossup = 4
  q6.team_a_bonus = 0
  q6.team_a_penalty = 0
  q6.team_b_tossup = 0
  q6.team_b_bonus = 0
  q6.team_b_penalty = 0
  q6.save
  q7 = Question.new
  q7.game_id = g1.id
  q7.team_a_tossup = 4
  q7.team_a_bonus = 10
  q7.team_a_penalty = 0
  q7.team_b_tossup = 0
  q7.team_b_bonus = 0
  q7.team_b_penalty = 0
  q7.save
  q8 = Question.new
  q8.game_id = g1.id
  q8.team_a_tossup = 0
  q8.team_a_bonus = 0
  q8.team_a_penalty = 0
  q8.team_b_tossup = 0
  q8.team_b_bonus = 0
  q8.team_b_penalty = 4
  q8.save
  q9 = Question.new
  q9.game_id = g1.id
  q9.team_a_tossup = 4
  q9.team_a_bonus = 10
  q9.team_a_penalty = 0
  q9.team_b_tossup = 0
  q9.team_b_bonus = 0
  q9.team_b_penalty = 0
  q9.save
  q10 = Question.new
  q10.game_id = g1.id
  q10.team_a_tossup = 4
  q10.team_a_bonus = 10
  q10.team_a_penalty = 0
  q10.team_b_tossup = 0
  q10.team_b_bonus = 0
  q10.team_b_penalty = 4
  q10.save
  q11 = Question.new
  q11.game_id = g1.id
  q11.team_a_tossup = 4
  q11.team_a_bonus = 10
  q11.team_a_penalty = 0
  q11.team_b_tossup = 0
  q11.team_b_bonus = 0
  q11.team_b_penalty = 0
  q11.save
  q12 = Question.new
  q12.game_id = g1.id
  q12.team_a_tossup = 4
  q12.team_a_bonus = 10
  q12.team_a_penalty = 0
  q12.team_b_tossup = 0
  q12.team_b_bonus = 0
  q12.team_b_penalty = 0
  q12.save
  q13 = Question.new
  q13.game_id = g1.id
  q13.team_a_tossup = 4
  q13.team_a_bonus = 0
  q13.team_a_penalty = 0
  q13.team_b_tossup = 0
  q13.team_b_bonus = 0
  q13.team_b_penalty = 0
  q13.save
  q14 = Question.new
  q14.game_id = g1.id
  q14.team_a_tossup = 4
  q14.team_a_bonus = 0
  q14.team_a_penalty = 0
  q14.team_b_tossup = 0
  q14.team_b_bonus = 0
  q14.team_b_penalty = 0
  q14.save
  q15 = Question.new
  q15.game_id = g1.id
  q15.team_a_tossup = 4
  q15.team_a_bonus = 0
  q15.team_a_penalty = 0
  q15.team_b_tossup = 0
  q15.team_b_bonus = 0
  q15.team_b_penalty = 0
  q15.save
  q16 = Question.new
  q16.game_id = g1.id
  q16.team_a_tossup = 4
  q16.team_a_bonus = 10
  q16.team_a_penalty = 0
  q16.team_b_tossup = 0
  q16.team_b_bonus = 0
  q16.team_b_penalty = 0
  q16.save
  q17 = Question.new
  q17.game_id = g1.id
  q17.team_a_tossup = 0
  q17.team_a_bonus = 0
  q17.team_a_penalty = 0
  q17.team_b_tossup = 4
  q17.team_b_bonus = 0
  q17.team_b_penalty = 0
  q17.save
  q18 = Question.new
  q18.game_id = g1.id
  q18.team_a_tossup = 4
  q18.team_a_bonus = 0
  q18.team_a_penalty = 4
  q18.team_b_tossup = 0
  q18.team_b_bonus = 0
  q18.team_b_penalty = 0
  q18.save
  q19 = Question.new
  q19.game_id = g1.id
  q19.team_a_tossup = 0
  q19.team_a_bonus = 0
  q19.team_a_penalty = 0
  q19.team_b_tossup = 0
  q19.team_b_bonus = 0
  q19.team_b_penalty = 0
  q19.save
  q20 = Question.new
  q20.game_id = g1.id
  q20.team_a_tossup = 4
  q20.team_a_bonus = 0
  q20.team_a_penalty = 0
  q20.team_b_tossup = 0
  q20.team_b_bonus = 0
  q20.team_b_penalty = 4
  q20.save


g2 = Game.new
g2.team_a_id = e1.id
g2.team_b_id = e3.id
g2.team_a_score=102
g2.team_b_score=80
g2.save

  q1 = Question.new
  q1.game_id = g2.id
  q1.team_a_tossup = 4
  q1.team_a_bonus = 0
  q1.team_a_penalty = 0
  q1.team_b_tossup = 0
  q1.team_b_bonus = 0
  q1.team_b_penalty = 0
  q1.save
  q2 = Question.new
  q2.game_id = g2.id
  q2.team_a_tossup = 0
  q2.team_a_bonus = 0
  q2.team_a_penalty = 0
  q2.team_b_tossup = 0
  q2.team_b_bonus = 0
  q2.team_b_penalty = 0
  q2.save
  q3 = Question.new
  q3.game_id = g2.id
  q3.team_a_tossup = 4
  q3.team_a_bonus = 10
  q3.team_a_penalty = 0
  q3.team_b_tossup = 0
  q3.team_b_bonus = 0
  q3.team_b_penalty = 4
  q3.save
  q4 = Question.new
  q4.game_id = g2.id
  q4.team_a_tossup = 4
  q4.team_a_bonus = 0
  q4.team_a_penalty = 0
  q4.team_b_tossup = 0
  q4.team_b_bonus = 0
  q4.team_b_penalty = 4
  q4.save
  q5 = Question.new
  q5.game_id = g2.id
  q5.team_a_tossup = 4
  q5.team_a_bonus = 10
  q5.team_a_penalty = 0
  q5.team_b_tossup = 0
  q5.team_b_bonus = 0
  q5.team_b_penalty = 0
  q5.save
  q6 = Question.new
  q6.game_id = g2.id
  q6.team_a_tossup = 4
  q6.team_a_bonus = 10
  q6.team_a_penalty = 0
  q6.team_b_tossup = 0
  q6.team_b_bonus = 0
  q6.team_b_penalty = 0
  q6.save
  q7 = Question.new
  q7.game_id = g2.id
  q7.team_a_tossup = 0
  q7.team_a_bonus = 0
  q7.team_a_penalty = 0
  q7.team_b_tossup = 4
  q7.team_b_bonus = 10
  q7.team_b_penalty = 0
  q7.save
  q8 = Question.new
  q8.game_id = g2.id
  q8.team_a_tossup = 0
  q8.team_a_bonus = 0
  q8.team_a_penalty = 0
  q8.team_b_tossup = 4
  q8.team_b_bonus = 0
  q8.team_b_penalty = 0
  q8.save
  q9 = Question.new
  q9.game_id = g2.id
  q9.team_a_tossup = 4
  q9.team_a_bonus = 0
  q9.team_a_penalty = 0
  q9.team_b_tossup = 0
  q9.team_b_bonus = 0
  q9.team_b_penalty = 0
  q9.save
  q10 = Question.new
  q10.game_id = g2.id
  q10.team_a_tossup = 0
  q10.team_a_bonus = 0
  q10.team_a_penalty = 0
  q10.team_b_tossup = 4
  q10.team_b_bonus = 10
  q10.team_b_penalty = 0
  q10.save
  q11 = Question.new
  q11.game_id = g2.id
  q11.team_a_tossup = 0
  q11.team_a_bonus = 0
  q11.team_a_penalty = 0
  q11.team_b_tossup = 0
  q11.team_b_bonus = 0
  q11.team_b_penalty = 4
  q11.save
  q12 = Question.new
  q12.game_id = g2.id
  q12.team_a_tossup = 4
  q12.team_a_bonus = 0
  q12.team_a_penalty = 4
  q12.team_b_tossup = 0
  q12.team_b_bonus = 0
  q12.team_b_penalty = 0
  q12.save
  q13 = Question.new
  q13.game_id = g2.id
  q13.team_a_tossup = 0
  q13.team_a_bonus = 0
  q13.team_a_penalty = 0
  q13.team_b_tossup = 4
  q13.team_b_bonus = 10
  q13.team_b_penalty = 0
  q13.save
  q14 = Question.new
  q14.game_id = g2.id
  q14.team_a_tossup = 0
  q14.team_a_bonus = 0
  q14.team_a_penalty = 0
  q14.team_b_tossup = 4
  q14.team_b_bonus = 10
  q14.team_b_penalty = 0
  q14.save
  q15 = Question.new
  q15.game_id = g2.id
  q15.team_a_tossup = 0
  q15.team_a_bonus = 0
  q15.team_a_penalty = 0
  q15.team_b_tossup = 0
  q15.team_b_bonus = 0
  q15.team_b_penalty = 4
  q15.save
  q16 = Question.new
  q16.game_id = g2.id
  q16.team_a_tossup = 4
  q16.team_a_bonus = 10
  q16.team_a_penalty = 0
  q16.team_b_tossup = 0
  q16.team_b_bonus = 0
  q16.team_b_penalty = 0
  q16.save
  q17 = Question.new
  q17.game_id = g2.id
  q17.team_a_tossup = 4
  q17.team_a_bonus = 0
  q17.team_a_penalty = 0
  q17.team_b_tossup = 0
  q17.team_b_bonus = 0
  q17.team_b_penalty = 0
  q17.save
  q18 = Question.new
  q18.game_id = g2.id
  q18.team_a_tossup = 4
  q18.team_a_bonus = 10
  q18.team_a_penalty = 0
  q18.team_b_tossup = 0
  q18.team_b_bonus = 0
  q18.team_b_penalty = 0
  q18.save
  q19 = Question.new
  q19.game_id = g2.id
  q19.team_a_tossup = 0
  q19.team_a_bonus = 0
  q19.team_a_penalty = 4
  q19.team_b_tossup = 4
  q19.team_b_bonus = 0
  q19.team_b_penalty = 0
  q19.save
  q20 = Question.new
  q20.game_id = g2.id
  q20.team_a_tossup = 4
  q20.team_a_bonus = 0
  q20.team_a_penalty = 0
  q20.team_b_tossup = 0
  q20.team_b_bonus = 0
  q20.team_b_penalty = 0
  q20.save


g3 = Game.new
g3.team_a_id = e2.id
g3.team_b_id = e3.id
g3.team_a_score=104
g3.team_b_score=48
g3.save

  q1 = Question.new
  q1.game_id = g3.id
  q1.team_a_tossup = 4
  q1.team_a_bonus = 0
  q1.team_a_penalty = 0
  q1.team_b_tossup = 0
  q1.team_b_bonus = 0
  q1.team_b_penalty = 0
  q1.save
  q2 = Question.new
  q2.game_id = g3.id
  q2.team_a_tossup = 0
  q2.team_a_bonus = 0
  q2.team_a_penalty = 0
  q2.team_b_tossup = 4
  q2.team_b_bonus = 0
  q2.team_b_penalty = 0
  q2.save
  q3 = Question.new
  q3.game_id = g3.id
  q3.team_a_tossup = 4
  q3.team_a_bonus = 10
  q3.team_a_penalty = 0
  q3.team_b_tossup = 0
  q3.team_b_bonus = 0
  q3.team_b_penalty = 0
  q3.save
  q4 = Question.new
  q4.game_id = g3.id
  q4.team_a_tossup = 4
  q4.team_a_bonus = 0
  q4.team_a_penalty = 0
  q4.team_b_tossup = 0
  q4.team_b_bonus = 0
  q4.team_b_penalty = 0
  q4.save
  q5 = Question.new
  q5.game_id = g3.id
  q5.team_a_tossup = 4
  q5.team_a_bonus = 0
  q5.team_a_penalty = 0
  q5.team_b_tossup = 0
  q5.team_b_bonus = 0
  q5.team_b_penalty = 4
  q5.save
  q6 = Question.new
  q6.game_id = g3.id
  q6.team_a_tossup = 4
  q6.team_a_bonus = 0
  q6.team_a_penalty = 0
  q6.team_b_tossup = 0
  q6.team_b_bonus = 0
  q6.team_b_penalty = 0
  q6.save
  q7 = Question.new
  q7.game_id = g3.id
  q7.team_a_tossup = 4
  q7.team_a_bonus = 0
  q7.team_a_penalty = 0
  q7.team_b_tossup = 0
  q7.team_b_bonus = 0
  q7.team_b_penalty = 0
  q7.save
  q8 = Question.new
  q8.game_id = g3.id
  q8.team_a_tossup = 0
  q8.team_a_bonus = 0
  q8.team_a_penalty = 0
  q8.team_b_tossup = 0
  q8.team_b_bonus = 0
  q8.team_b_penalty = 0
  q8.save
  q9 = Question.new
  q9.game_id = g3.id
  q9.team_a_tossup = 4
  q9.team_a_bonus = 0
  q9.team_a_penalty = 4
  q9.team_b_tossup = 0
  q9.team_b_bonus = 0
  q9.team_b_penalty = 4
  q9.save
  q10 = Question.new
  q10.game_id = g3.id
  q10.team_a_tossup = 4
  q10.team_a_bonus = 0
  q10.team_a_penalty = 0
  q10.team_b_tossup = 0
  q10.team_b_bonus = 0
  q10.team_b_penalty = 0
  q10.save
  q11 = Question.new
  q11.game_id = g3.id
  q11.team_a_tossup = 4
  q11.team_a_bonus = 10
  q11.team_a_penalty = 0
  q11.team_b_tossup = 0
  q11.team_b_bonus = 0
  q11.team_b_penalty = 4
  q11.save
  q12 = Question.new
  q12.game_id = g3.id
  q12.team_a_tossup = 0
  q12.team_a_bonus = 0
  q12.team_a_penalty = 0
  q12.team_b_tossup = 4
  q12.team_b_bonus = 10
  q12.team_b_penalty = 0
  q12.save
  q13 = Question.new
  q13.game_id = g3.id
  q13.team_a_tossup = 4
  q13.team_a_bonus = 10
  q13.team_a_penalty = 4
  q13.team_b_tossup = 0
  q13.team_b_bonus = 0
  q13.team_b_penalty = 0
  q13.save
  q14 = Question.new
  q14.game_id = g3.id
  q14.team_a_tossup = 4
  q14.team_a_bonus = 0
  q14.team_a_penalty = 0
  q14.team_b_tossup = 0
  q14.team_b_bonus = 0
  q14.team_b_penalty = 0
  q14.save
  q15 = Question.new
  q15.game_id = g3.id
  q15.team_a_tossup = 0
  q15.team_a_bonus = 0
  q15.team_a_penalty = 0
  q15.team_b_tossup = 4
  q15.team_b_bonus = 0
  q15.team_b_penalty = 0
  q15.save
  q16 = Question.new
  q16.game_id = g3.id
  q16.team_a_tossup = 0
  q16.team_a_bonus = 0
  q16.team_a_penalty = 0
  q16.team_b_tossup = 0
  q16.team_b_bonus = 0
  q16.team_b_penalty = 0
  q16.save
  q17 = Question.new
  q17.game_id = g3.id
  q17.team_a_tossup = 0
  q17.team_a_bonus = 0
  q17.team_a_penalty = 0
  q17.team_b_tossup = 4
  q17.team_b_bonus = 10
  q17.team_b_penalty = 0
  q17.save
  q18 = Question.new
  q18.game_id = g3.id
  q18.team_a_tossup = 4
  q18.team_a_bonus = 0
  q18.team_a_penalty = 0
  q18.team_b_tossup = 0
  q18.team_b_bonus = 0
  q18.team_b_penalty = 0
  q18.save
  q19 = Question.new
  q19.game_id = g3.id
  q19.team_a_tossup = 4
  q19.team_a_bonus = 0
  q19.team_a_penalty = 0
  q19.team_b_tossup = 0
  q19.team_b_bonus = 0
  q19.team_b_penalty = 0
  q19.save
  q20 = Question.new
  q20.game_id = g3.id
  q20.team_a_tossup = 4
  q20.team_a_bonus = 10
  q20.team_a_penalty = 0
  q20.team_b_tossup = 0
  q20.team_b_bonus = 0
  q20.team_b_penalty = 0
  q20.save


g4 = Game.new
g4.team_a_id = e2.id
g4.team_b_id = e4.id
g4.team_a_score=92
g4.team_b_score=70
g4.save

  q1 = Question.new
  q1.game_id = g4.id
  q1.team_a_tossup = 0
  q1.team_a_bonus = 0
  q1.team_a_penalty = 4
  q1.team_b_tossup = 4
  q1.team_b_bonus = 0
  q1.team_b_penalty = 0
  q1.save
  q2 = Question.new
  q2.game_id = g4.id
  q2.team_a_tossup = 4
  q2.team_a_bonus = 0
  q2.team_a_penalty = 4
  q2.team_b_tossup = 0
  q2.team_b_bonus = 0
  q2.team_b_penalty = 0
  q2.save
  q3 = Question.new
  q3.game_id = g4.id
  q3.team_a_tossup = 0
  q3.team_a_bonus = 0
  q3.team_a_penalty = 0
  q3.team_b_tossup = 4
  q3.team_b_bonus = 10
  q3.team_b_penalty = 4
  q3.save
  q4 = Question.new
  q4.game_id = g4.id
  q4.team_a_tossup = 0
  q4.team_a_bonus = 0
  q4.team_a_penalty = 0
  q4.team_b_tossup = 4
  q4.team_b_bonus = 10
  q4.team_b_penalty = 0
  q4.save
  q5 = Question.new
  q5.game_id = g4.id
  q5.team_a_tossup = 0
  q5.team_a_bonus = 0
  q5.team_a_penalty = 0
  q5.team_b_tossup = 4
  q5.team_b_bonus = 0
  q5.team_b_penalty = 0
  q5.save
  q6 = Question.new
  q6.game_id = g4.id
  q6.team_a_tossup = 0
  q6.team_a_bonus = 0
  q6.team_a_penalty = 0
  q6.team_b_tossup = 4
  q6.team_b_bonus = 0
  q6.team_b_penalty = 0
  q6.save
  q7 = Question.new
  q7.game_id = g4.id
  q7.team_a_tossup = 4
  q7.team_a_bonus = 0
  q7.team_a_penalty = 0
  q7.team_b_tossup = 0
  q7.team_b_bonus = 0
  q7.team_b_penalty = 0
  q7.save
  q8 = Question.new
  q8.game_id = g4.id
  q8.team_a_tossup = 0
  q8.team_a_bonus = 0
  q8.team_a_penalty = 0
  q8.team_b_tossup = 0
  q8.team_b_bonus = 0
  q8.team_b_penalty = 0
  q8.save
  q9 = Question.new
  q9.game_id = g4.id
  q9.team_a_tossup = 4
  q9.team_a_bonus = 0
  q9.team_a_penalty = 0
  q9.team_b_tossup = 0
  q9.team_b_bonus = 0
  q9.team_b_penalty = 0
  q9.save
  q10 = Question.new
  q10.game_id = g4.id
  q10.team_a_tossup = 4
  q10.team_a_bonus = 10
  q10.team_a_penalty = 0
  q10.team_b_tossup = 0
  q10.team_b_bonus = 0
  q10.team_b_penalty = 0
  q10.save
  q11 = Question.new
  q11.game_id = g4.id
  q11.team_a_tossup = 4
  q11.team_a_bonus = 0
  q11.team_a_penalty = 0
  q11.team_b_tossup = 0
  q11.team_b_bonus = 0
  q11.team_b_penalty = 4
  q11.save
  q12 = Question.new
  q12.game_id = g4.id
  q12.team_a_tossup = 4
  q12.team_a_bonus = 10
  q12.team_a_penalty = 0
  q12.team_b_tossup = 0
  q12.team_b_bonus = 0
  q12.team_b_penalty = 0
  q12.save
  q13 = Question.new
  q13.game_id = g4.id
  q13.team_a_tossup = 0
  q13.team_a_bonus = 0
  q13.team_a_penalty = 0
  q13.team_b_tossup = 0
  q13.team_b_bonus = 0
  q13.team_b_penalty = 0
  q13.save
  q14 = Question.new
  q14.game_id = g4.id
  q14.team_a_tossup = 0
  q14.team_a_bonus = 0
  q14.team_a_penalty = 0
  q14.team_b_tossup = 4
  q14.team_b_bonus = 0
  q14.team_b_penalty = 0
  q14.save
  q15 = Question.new
  q15.game_id = g4.id
  q15.team_a_tossup = 0
  q15.team_a_bonus = 0
  q15.team_a_penalty = 0
  q15.team_b_tossup = 4
  q15.team_b_bonus = 10
  q15.team_b_penalty = 0
  q15.save
  q16 = Question.new
  q16.game_id = g4.id
  q16.team_a_tossup = 4
  q16.team_a_bonus = 0
  q16.team_a_penalty = 0
  q16.team_b_tossup = 0
  q16.team_b_bonus = 0
  q16.team_b_penalty = 4
  q16.save
  q17 = Question.new
  q17.game_id = g4.id
  q17.team_a_tossup = 4
  q17.team_a_bonus = 10
  q17.team_a_penalty = 0
  q17.team_b_tossup = 0
  q17.team_b_bonus = 0
  q17.team_b_penalty = 0
  q17.save
  q18 = Question.new
  q18.game_id = g4.id
  q18.team_a_tossup = 4
  q18.team_a_bonus = 0
  q18.team_a_penalty = 0
  q18.team_b_tossup = 0
  q18.team_b_bonus = 0
  q18.team_b_penalty = 0
  q18.save
  q19 = Question.new
  q19.game_id = g4.id
  q19.team_a_tossup = 4
  q19.team_a_bonus = 0
  q19.team_a_penalty = 0
  q19.team_b_tossup = 0
  q19.team_b_bonus = 0
  q19.team_b_penalty = 0
  q19.save
  q20 = Question.new
  q20.game_id = g4.id
  q20.team_a_tossup = 4
  q20.team_a_bonus = 10
  q20.team_a_penalty = 0
  q20.team_b_tossup = 0
  q20.team_b_bonus = 0
  q20.team_b_penalty = 0
  q20.save

g5 = Game.new
g5.team_a_id = e4.id
g5.team_b_id = e3.id
g5.team_a_score=84
g5.team_b_score=86
g5.save

  q1 = Question.new
  q1.game_id = g5.id
  q1.team_a_tossup = 0
  q1.team_a_bonus = 0
  q1.team_a_penalty = 0
  q1.team_b_tossup = 4
  q1.team_b_bonus = 10
  q1.team_b_penalty = 0
  q1.save
  q2 = Question.new
  q2.game_id = g5.id
  q2.team_a_tossup = 0
  q2.team_a_bonus = 0
  q2.team_a_penalty = 0
  q2.team_b_tossup = 4
  q2.team_b_bonus = 0
  q2.team_b_penalty = 0
  q2.save
  q3 = Question.new
  q3.game_id = g5.id
  q3.team_a_tossup = 0
  q3.team_a_bonus = 0
  q3.team_a_penalty = 0
  q3.team_b_tossup = 0
  q3.team_b_bonus = 0
  q3.team_b_penalty = 0
  q3.save
  q4 = Question.new
  q4.game_id = g5.id
  q4.team_a_tossup = 0
  q4.team_a_bonus = 0
  q4.team_a_penalty = 0
  q4.team_b_tossup = 4
  q4.team_b_bonus = 10
  q4.team_b_penalty = 0
  q4.save
  q5 = Question.new
  q5.game_id = g5.id
  q5.team_a_tossup = 4
  q5.team_a_bonus = 10
  q5.team_a_penalty = 0
  q5.team_b_tossup = 0
  q5.team_b_bonus = 0
  q5.team_b_penalty = 0
  q5.save
  q6 = Question.new
  q6.game_id = g5.id
  q6.team_a_tossup = 4
  q6.team_a_bonus = 0
  q6.team_a_penalty = 0
  q6.team_b_tossup = 0
  q6.team_b_bonus = 0
  q6.team_b_penalty = 0
  q6.save
  q7 = Question.new
  q7.game_id = g5.id
  q7.team_a_tossup = 4
  q7.team_a_bonus = 10
  q7.team_a_penalty = 0
  q7.team_b_tossup = 0
  q7.team_b_bonus = 0
  q7.team_b_penalty = 0
  q7.save
  q8 = Question.new
  q8.game_id = g5.id
  q8.team_a_tossup = 0
  q8.team_a_bonus = 0
  q8.team_a_penalty = 0
  q8.team_b_tossup = 4
  q8.team_b_bonus = 0
  q8.team_b_penalty = 0
  q8.save
  q9 = Question.new
  q9.game_id = g5.id
  q9.team_a_tossup = 4
  q9.team_a_bonus = 0
  q9.team_a_penalty = 0
  q9.team_b_tossup = 0
  q9.team_b_bonus = 0
  q9.team_b_penalty = 0
  q9.save
  q10 = Question.new
  q10.game_id = g5.id
  q10.team_a_tossup = 4
  q10.team_a_bonus = 0
  q10.team_a_penalty = 0
  q10.team_b_tossup = 0
  q10.team_b_bonus = 0
  q10.team_b_penalty = 0
  q10.save
  q11 = Question.new
  q11.game_id = g5.id
  q11.team_a_tossup = 4
  q11.team_a_bonus = 0
  q11.team_a_penalty = 0
  q11.team_b_tossup = 0
  q11.team_b_bonus = 0
  q11.team_b_penalty = 0
  q11.save
  q12 = Question.new
  q12.game_id = g5.id
  q12.team_a_tossup = 0
  q12.team_a_bonus = 0
  q12.team_a_penalty = 0
  q12.team_b_tossup = 4
  q12.team_b_bonus = 10
  q12.team_b_penalty = 4
  q12.save
  q13 = Question.new
  q13.game_id = g5.id
  q13.team_a_tossup = 4
  q13.team_a_bonus = 0
  q13.team_a_penalty = 4
  q13.team_b_tossup = 0
  q13.team_b_bonus = 0
  q13.team_b_penalty = 0
  q13.save
  q14 = Question.new
  q14.game_id = g5.id
  q14.team_a_tossup = 0
  q14.team_a_bonus = 0
  q14.team_a_penalty = 0
  q14.team_b_tossup = 0
  q14.team_b_bonus = 0
  q14.team_b_penalty = 0
  q14.save
  q15 = Question.new
  q15.game_id = g5.id
  q15.team_a_tossup = 0
  q15.team_a_bonus = 0
  q15.team_a_penalty = 0
  q15.team_b_tossup = 4
  q15.team_b_bonus = 0
  q15.team_b_penalty = 0
  q15.save
  q16 = Question.new
  q16.game_id = g5.id
  q16.team_a_tossup = 0
  q16.team_a_bonus = 0
  q16.team_a_penalty = 0
  q16.team_b_tossup = 4
  q16.team_b_bonus = 10
  q16.team_b_penalty = 0
  q16.save
  q17 = Question.new
  q17.game_id = g5.id
  q17.team_a_tossup = 4
  q17.team_a_bonus = 10
  q17.team_a_penalty = 0
  q17.team_b_tossup = 0
  q17.team_b_bonus = 0
  q17.team_b_penalty = 0
  q17.save
  q18 = Question.new
  q18.game_id = g5.id
  q18.team_a_tossup = 4
  q18.team_a_bonus = 0
  q18.team_a_penalty = 0
  q18.team_b_tossup = 0
  q18.team_b_bonus = 0
  q18.team_b_penalty = 0
  q18.save
  q19 = Question.new
  q19.game_id = g5.id
  q19.team_a_tossup = 4
  q19.team_a_bonus = 10
  q19.team_a_penalty = 0
  q19.team_b_tossup = 0
  q19.team_b_bonus = 0
  q19.team_b_penalty = 0
  q19.save

  q20 = Question.new
  q20.game_id = g5.id
  q20.team_a_tossup = 0
  q20.team_a_bonus = 0
  q20.team_a_penalty = 0
  q20.team_b_tossup = 4
  q20.team_b_bonus = 10
  q20.team_b_penalty = 0
  q20.save

puts "#{Game.count} games with #{Question.count} questions in the datbase"
