FearSetting app.

Designed for API use only.

Create user:

POST http://localhost:3000/users

header:

[{"key":"Content-Type","value":"application/json","description":"","enabled":true}]

body (raw):

{ "user": {
    "email": "test5@example.com",
    "password": "123456",
    "password_confirmation": "123456"
  } }

Login user:

POST http://localhost:3000/users/login

header:

[{"key":"Content-Type","value":"application/json","description":"","enabled":true}]

body (raw):
{
  "email": "test5@example.com",
  "password": "123456"
}

Get list of challenges for user:

GET http://localhost:3000/api/v1/challenges/

header:
Authorization [authorisation token]

Get specific challenge:

GET http://localhost:3000/api/v1/challenges/[challenge_id]

header:
Authorization: [authorisation token]


Create Challenge

POST http://localhost:3000/api/v1/challenges

header:
Authorization [authorisation token]
[{"key":"Content-Type","value":"application/json","description":"","enabled":true}]

body (raw):

{ "challenge": 
  {
    "challenge_descr": "Mijn Uitdaging", "cost_inaction_hy": "niet zoveel", "cost_inaction_yr": "behoorlijk", "cost_inaction_3y": "rampzalig", "acceptable": "false",
    "benefits_attributes": 
    [
      { "benefit_descr": "goed voor mij" }, 
      { "benefit_descr": "En ook voor jou" } 
    ],
    "fears_attributes": 
    [
      { "fear_descr": "Fear1: Niet goed voor mij" },
      { "fear_descr": "Fear2: Nog slechter"} 
    ]
  }
}

Create Fear (en fixes en preventions)

POST http://localhost:3000/api/v1/fears

header:
Authorization [authorisation token]
[{"key":"Content-Type","value":"application/json","description":"","enabled":true}]

body (raw):

{ "fear": 
  {
    "challenge_id": "CHALLENGE_ID: you get this from the challenge index above (get list of challenges)",
    "fear_descr": "Biggested Fear",
    "preventions_attributes": 
    [
      { "prevention_descr": "do not be scared" }, 
      { "prevention_descr": "the force will be with you" } 
    ],
    "fixes_attributes": 
    [
      { "fix_descr": "Fix1: Call for help" },
      { "fix_descr": "Fix2: zoom"} 
    ]
  }
}











