# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example. Added multiple new features.

## Final Product

!["The product page with the user Clark logged in"](https://github.com/yvesandre-middleton/jungle-rails/blob/master/docs/Screen%20Shot%202018-03-02%20at%206.38.06%20PM.png?raw=true)
!["The product page with an item that has 0 quantity shown as sold out"](https://github.com/yvesandre-middleton/jungle-rails/blob/master/docs/Screen%20Shot%202018-03-02%20at%206.38.16%20PM.png?raw=true)
!["The product detail page with two reviews from two different users. The user that is logged in is able to delete there own review"](https://github.com/yvesandre-middleton/jungle-rails/blob/master/docs/Screen%20Shot%202018-03-02%20at%206.38.28%20PM.png?raw=true)
!["The cart page filled out with one item"](https://github.com/yvesandre-middleton/jungle-rails/blob/master/docs/Screen%20Shot%202018-03-02%20at%206.38.42%20PM.png?raw=true)
!["The order page with a completed order with the orders details"](https://github.com/yvesandre-middleton/jungle-rails/blob/master/docs/Screen%20Shot%202018-03-02%20at%206.39.06%20PM.png?raw=true)
!["The admin page that allows them to create a new category"](https://github.com/yvesandre-middleton/jungle-rails/blob/master/docs/Screen%20Shot%202018-03-02%20at%206.38.42%20PM.png?raw=true)
!["The modify products admin page with a new category added"](https://github.com/yvesandre-middleton/jungle-rails/blob/master/docs/Screen%20Shot%202018-03-02%20at%206.39.52%20PM.png?raw=true)
!["The sign up page for a new user"](https://github.com/yvesandre-middleton/jungle-rails/blob/master/docs/Screen%20Shot%202018-03-02%20at%206.41.52%20PM.png?raw=true)
!["The login page for a new user"](https://github.com/yvesandre-middleton/jungle-rails/blob/master/docs/Screen%20Shot%202018-03-02%20at%206.41.57%20PM.png?raw=true)


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
