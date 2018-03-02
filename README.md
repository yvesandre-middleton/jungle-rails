# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example. Added multiple new features.

## Final Product

!["This is the main page populated with tweets and with text in the compose box"](https://github.com/yvesandre-middleton/tweeter-app/blob/master/docs/mainscreen-textbox-has-input.png?raw=true)
!["This is the main page populated with tweets and with the compose box folded up"](https://github.com/yvesandre-middleton/tweeter-app/blob/master/docs/compose-form-folded-up.png?raw=true)
!["This is the main page populated with tweets and with an error message saying the tweet is too long. Notice the counter is also red when over 140 characters"](https://github.com/yvesandre-middleton/tweeter-app/blob/master/docs/message-too-long-error.png?raw=true)


## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

# Creator Information

- Yves-André Middleton
- Created March 2 2018
- Created while at Lighthouse Labs Web Development bootcamp. January 2018 Cohort.
- Direct questions to yvesmiddleton@gmail.com
- Github: https://github.com/yvesandre-middleton
- Linkedin: https://www.linkedin.com/in/yves-andr%C3%A9-middleton-04424661/
