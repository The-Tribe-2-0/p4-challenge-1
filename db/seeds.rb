Restaurant.create(name: 'Sottocasa NYC', address: '298 Atlantic Ave, Brooklyn, NY 11201')
Restaurant.create(name: 'PizzArte', address: '69 W 55th St, New York, NY 10019')

Pizza.create(name: 'Cheese', ingredients: 'Dough, Tomato Sauce, Cheese')
Pizza.create(name: 'Pepperoni', ingredients: 'Dough, Tomato Sauce, Cheese, Pepperoni')

RestaurantPizza.create(restaurant_id: 1, pizza_id: 1, price: 10)
RestaurantPizza.create(restaurant_id: 1, pizza_id: 2, price: 12)