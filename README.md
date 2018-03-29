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

Create Challenge

POST http://localhost:3000/api/v1/challenges

header:
Authorization [authorisation token]



Get list of challenges for user:

GET http://localhost:3000/api/v1/challenges/

header:
Authorization [authorisation token]

Get specific challenge:

GET http://localhost:3000/api/v1/challenges/[challenge_id]

header:
Authorization: [authorisation token]