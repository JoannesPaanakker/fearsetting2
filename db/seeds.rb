# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "seeds started"

Fix.destroy_all
Prevention.destroy_all
Fear.destroy_all
Benefit.destroy_all
Challenge.destroy_all
User.destroy_all

users = User.create([
  {
    email: 'test@test.com',
    password: '123456',
    name: 'John Doe',
  },
  {
    email: 'test2@test.com',
    password: '123456',
    name: 'Henk habraken',
  },
  {
    email: 'test3@test.com',
    password: '123456',
    name: 'Piet Hobbelduif',
  }
])

challenges = Challenge.create([
  {
    challenge_descr: 'Going on an adventure',
    acceptable: 'false',
    cost_inaction_hy: 'bored',
    cost_inaction_yr: 'very bored',
    cost_inaction_3y: 'bored to death',
    user: users[0],
  },
  {
    challenge_descr: 'Buy a new house',
    acceptable: 'true',
    cost_inaction_hy: 'Savings',
    cost_inaction_yr: 'More savings',
    cost_inaction_3y: 'Lots of savings',
    user: users[0],
  },
  {
    challenge_descr: 'Going back to school',
    acceptable: 'false',
    cost_inaction_hy: 'uneducated',
    cost_inaction_yr: 'still unaducated',
    cost_inaction_3y: 'getting fired',
    user: users[1],
  },
  {
    challenge_descr: 'Sell the house',
    acceptable: 'false',
    cost_inaction_hy: 'no money',
    cost_inaction_yr: 'still no money',
    cost_inaction_3y: 'House broke down and still no money...',
    user: users[2],
  },  
])

benefits = Benefit.create([
  {
    benefit_descr: 'exciting',
    challenge: challenges[0]
  },
  {
    benefit_descr: 'A new house!',
    challenge: challenges[1]
  },
  {
    benefit_descr: 'Learn something',
    challenge: challenges[2]
  },
  {
    benefit_descr: 'Lots of money',
    challenge: challenges[3]
  },
  {
    benefit_descr: 'away from home',
    challenge: challenges[0]
  },
  {
    benefit_descr: 'no repairs (for the time being)',
    challenge: challenges[1]
  },
])

fears = Fear.create([
  {
    fear_descr: 'scary',
    challenge: challenges[0]
  },
  {
    fear_descr: 'don\'t like the neighbourhood',
    challenge: challenges[1]
  },
  {
    fear_descr: 'I am too stupid',
    challenge: challenges[2]
  },
  {
    fear_descr: 'Nowhere to live',
    challenge: challenges[3]
  },
  {
    fear_descr: 'No income from work',
    challenge: challenges[0]
  },
  {
    fear_descr: 'will not like the weather',
    challenge: challenges[1]
  }
])

fixes = Fix.create([
  {
    fix_descr: 'Drink whiskey',
    fear: fears[0]
  },
  {
    fix_descr: 'Stay in all day',
    fear: fears[1]
  },
  {
    fix_descr: 'Work hard',
    fear: fears[2]
  },
  {
    fix_descr: 'Move in with parents',
    fear: fears[3]
  },
  {
    fix_descr: 'Get a job',
    fear: fears[4]
  },
  {
    fix_descr: 'Cheer up!',
    fear: fears[5]
  },
  {
    fix_descr: 'Burn CO2',
    fear: fears[5]
  }
])

preventions = Prevention.create([
  {
    prevention_descr: 'Go to known areas',
    fear: fears[0]
  },
  {
    prevention_descr: 'Organise welcoming party',
    fear: fears[1]
  },
  {
    prevention_descr: 'Go to highschool',
    fear: fears[2]
  },
  {
    prevention_descr: 'Buy a new house',
    fear: fears[3]
  },
  {
    prevention_descr: 'Get a job',
    fear: fears[4]
  },
  {
    prevention_descr: 'Buy a house in a warm country',
    fear: fears[5]
  },
  {
    prevention_descr: 'Buy a warm coat',
    fear: fears[5]
  }
])

p "seeds successfull"