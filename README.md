Pizza Restaurant Tracker API
This is a Rails API backend for tracking pizza restaurants. It allows you to manage restaurant information and associated pizzas.

Getting Started
To set up the project locally, follow these steps:

Clone the repository:

shell
Copy code
git clone https://github.com/your-username/pizza-restaurant-tracker-api.git
Install the dependencies:

shell
Copy code
cd pizza-restaurant-tracker-api
bundle install
Set up the database:

shell
Copy code
rails db:create
rails db:migrate
(Optional) Generate seed data:

shell
Copy code
rails db:seed
Start the Rails server:

shell
Copy code
rails server
The server will start running at http://localhost:3000.

API Endpoints
The following API endpoints are available:

GET /restaurants: Returns a list of all restaurants.

Response format:

json
Copy code
[
  {
    "id": 1,
    "name": "Sottocasa NYC",
    "address": "298 Atlantic Ave, Brooklyn, NY 11201"
  },
  {
    "id": 2,
    "name": "PizzArte",
    "address": "69 W 55th St, New York, NY 10019"
  }
]
GET /restaurants/:id: Returns the details of a specific restaurant.

Response format:

json
Copy code
{
  "id": 1,
  "name": "Sottocasa NYC",
  "address": "298 Atlantic Ave, Brooklyn, NY 11201"
}
Models and Associations
The application has the following models and associations:

Restaurant:

name (string): The name of the restaurant.
address (string): The address of the restaurant.
Associations:
has_many :restaurant_pizzas
has_many :pizzas, through: :restaurant_pizzas
Pizza:

name (string): The name of the pizza.
Associations:
has_many :restaurant_pizzas
has_many :restaurants, through: :restaurant_pizzas
RestaurantPizza:

restaurant_id (integer): The ID of the associated restaurant.
pizza_id (integer): The ID of the associated pizza.
price (integer): The price of the pizza at the restaurant.
Associations:
belongs_to :restaurant
belongs_to :pizza
Validations
The RestaurantPizza model has a validation for the price field. It must be a number between 1 and 30.

Contributing
If you would like to contribute to this project, you can follow these steps:

Fork the repository.
Create a new branch for your feature or bug fix: git checkout -b feature-name.
Make your changes and commit them: git commit -m "Add feature".
Push the branch: git push origin feature-name.
Submit a pull request.
License
This project is licensed under the MIT License.

Feel free to customize and expand upon this README file to suit the specific details and requirements of your project.






Regenerate response

