# CoyCoy e-commerce webshop

Sample rails app to learn how to work in team with [SCRUM](https://www.scrum.org/), design models and store user browsing history in sessions instead of cookies, and design models and database structure.

<img width="500" alt="screen shot 2018-02-14 at 15 56 08" src="https://user-images.githubusercontent.com/32798242/36210868-e04c3328-119f-11e8-8e27-fbdb74f6bca7.png">
<img width="500" alt="screen shot 2018-02-14 at 15 56 33" src="https://user-images.githubusercontent.com/32798242/36210871-e20c4d6a-119f-11e8-89f6-3592dc6a219b.png">

## Steps
These are the steps our team followed when working on this app:
1. Set up a Github project board to keep track of the development progress
2. Draw wireframes, sketch out how users navigate
3. Plan data models, database structure by understanding the impacts of user interaction
4. Generate the App & Models
5. Create initial seed data
6. Create controllers & views for products overview, show and cart pages
7. Style the app with [Bootstrap](https://getbootstrap.com/) and a bit of [jQuery](https://jquery.com/)
8. Write model tests using [Rspec](https://github.com/rspec/rspec), [FactoryGirl](https://github.com/kenoir/factory_girl_rails) & [Faker](https://github.com/stympy/faker)

## Model/ Database Structure
| Product    | Type   | Description   |
|------------|--------|---------------|
| name       | string | Product name  |
| price      | decimal| Product price |
| description| text   | Description   |
| brand      | string | Brand name    |

| List_item  | Type   | Description    |
|------------|--------|----------------|
| quantity   | integer| Order quantity |
| purchased  | boolean| Purchase status|
| total_price| decimal| Total price    |
| cart_id    | bigint | references     |
| product_id | bigint | references     |
| total_price| decimal| Total price    |

| Cart      | Type   | Description   |
|-----------|--------|---------------|
| image     | string | Artist's photo|
| artist_id | bigint | reference     |

| Profile   | Type   | Description   |
|-----------|--------|---------------|
| first_name| string | First name    |
| last_name | string | Last name     |
| user_id   | bigint | references    |

User model was created by using [Devise](https://github.com/RailsApps/rails-devise).

## Running Locally
* Note: Our team worked only in 1 week in class. The functionality of saving products in the Cart page is not finished yet.
Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed.

```bash
git clone git@github.com:fandytcc/CoyCoy.git
cd CoyCoy
bundle install
rails db:create db:migrate db:seed
rails server
```
