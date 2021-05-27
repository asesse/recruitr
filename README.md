## Name
Recruitr

## Hosted project
[Hosted project on Heroku](https://recruitr-by-asesse.herokuapp.com/users/sign_in)

## Description
The goal of this app is to help the recruitment process for a company and to manage applicants.
- As a user (HR person) I can create job positions
- As a user I can assign skills to a position
- As a user I can create applicants within a position
- As a user I can match an applicant with an employee for an interview

## Installation
Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates)

Ruby version ```git
ruby 2.6.6p146 ```

1. clone locally using ```
git https://github.com/asesse/recruitr.git ```
2. Initialiaze database running ```
rails db:create ```
3. Run migrations ```
rails db:migrate```
4. Seed database ```
rails db:seed```
5. Install dependencies using```
bundle install```
6. Install dependencies using ```
yarn install```
7. Start rails server using ```git
rails s``` and open [your local server](http://localhost:3000/) in your browser

```git
$ rails db:create
$ rails db:migrate
$ rails db:seed
$ bundle install
$ yarn install
$ rails s
```

## Roadmap
- The suggested list of recruiters for each applicant can be smart
- Once a recruiter has been matched to an applicant they get notified by email
- Once the datetime for the interview is setup, the user will create an event through the google calendar API and invite the suggested employee and the applicant
- HR person and employee can fill an applicant scorecard with specific traits such as experience, dynamism, interest in the company
