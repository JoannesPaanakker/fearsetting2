FearSetting app.

Designed for API use only.

Create user:

POST http://localhost:3000/users

header:

[{"key":"Content-Type","value":"application/json","description":"","enabled":true}]

body (raw):

{ "user": {
    "email": "test5@example.com",
    "password": "anewpassword",
    "password_confirmation": "anewpassword"
  } }

Login user:

POST http://localhost:3000/users/login

header:

[{"key":"Content-Type","value":"application/json","description":"","enabled":true}]

body (raw):
{
  "email": "test5@example.com",
  "password": "anewpassword"
}


Get list of challenges for user:

GET http://localhost:3000/api/v1/challenges/

header:
Authorization [authorisation token]

Get specific challenge:

GET http://localhost:3000/api/v1/challenges/[challenge_id]

header:
Authorization: [authorisation token]