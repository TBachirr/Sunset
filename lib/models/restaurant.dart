import 'package:flutter/material.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // List of food items
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Cheeseburger",
      description: "A classic cheeseburger with cheddar cheese.",
      imagePath: "lib/images/burgers/burger1.jpg",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
      ],
    ),
    Food(
      name: "Mushroom Swiss Burger",
      description: "A savory beef patty topped with Swiss cheese and sautéed mushrooms on a toasted bun.",
      imagePath: "lib/images/burgers/burger2.jpg",
      price: 2.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Swiss cheese", price: 0.99),
        Addon(name: "Grilled onions", price: 0.79),
        Addon(name: "Fried egg", price: 1.49),
      ],
    ),
    Food(
      name: "Bacon Burger",
      description: "Burger with crispy bacon and cheese.",
      imagePath: "lib/images/burgers/burger3.jpg",
      price: 6.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra bacon", price: 1.49),
      ],
    ),
    Food(
      name: "Double Burger",
      description: "Double beef patties with lettuce, tomato, and cheese.",
      imagePath: "lib/images/burgers/burger4.jpg",
      price: 7.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra patty", price: 2.99),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description: "A vegetarian burger made with a plant-based patty.",
      imagePath: "lib/images/burgers/burger5.jpg",
      price: 5.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Avocado", price: 1.29),
      ],
    ),

    // salads
    Food(
      name: "Caesar Salad",
      description: "Fresh romaine lettuce with Caesar dressing and croutons.",
      imagePath: "lib/images/salads/salad1.jpg",
      price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 2.99),
      ],
    ),
    Food(
      name: "Greek Salad",
      description: "Crisp vegetables with feta cheese and olives.",
      imagePath: "lib/images/salads/salad2.jpg",
      price: 5.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra feta", price: 0.99),
      ],
    ),
    Food(
      name: "Garden Salad",
      description: "Mixed greens with a variety of fresh vegetables.",
      imagePath: "lib/images/salads/salad3.jpg",
      price: 4.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Ranch dressing", price: 0.79),
      ],
    ),
    Food(
      name: "Cobb Salad",
      description: "Chicken, bacon, eggs, and avocado on a bed of greens.",
      imagePath: "lib/images/salads/salad4.jpg",
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra bacon", price: 1.49),
      ],
    ),
    Food(
      name: "Caprese Salad",
      description: "Tomatoes, fresh mozzarella, and basil with balsamic glaze.",
      imagePath: "lib/images/salads/salad5.jpg",
      price: 5.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra mozzarella", price: 1.29),
      ],
    ),

    // sides
    Food(
      name: "French Fries",
      description: "Crispy golden fries with a sprinkle of salt.",
      imagePath: "lib/images/sides/side1.jpg",
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ketchup", price: 0.49),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Crispy fried onion rings with a side of dipping sauce.",
      imagePath: "lib/images/sides/side2.jpg",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "BBQ sauce", price: 0.79),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Sweet potato fries with a dash of cinnamon.",
      imagePath: "lib/images/sides/side3.jpg",
      price: 2.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Honey mustard", price: 0.79),
      ],
    ),
    Food(
      name: "Mozzarella Sticks",
      description: "Fried mozzarella sticks with marinara sauce.",
      imagePath: "lib/images/sides/side4.jpg",
      price: 3.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra marinara", price: 0.79),
      ],
    ),
    Food(
      name: "Coleslaw",
      description: "Creamy coleslaw with shredded cabbage and carrots.",
      imagePath: "lib/images/sides/side5.jpg",
      price: 1.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra dressing", price: 0.49),
      ],
    ),

    // desserts
    Food(
      name: "Cheesecake",
      description: "Creamy cheesecake with a graham cracker crust.",
      imagePath: "lib/images/desserts/dessert1.jpg",
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry sauce", price: 0.99),
      ],
    ),
    Food(
      name: "Brownie",
      description: "Chewy chocolate brownie with nuts.",
      imagePath: "lib/images/desserts/dessert2.jpg",
      price: 2.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Caramel sauce", price: 0.79),
      ],
    ),
    Food(
      name: "Ice Cream Sundae",
      description: "Vanilla ice cream with hot fudge and a cherry on top.",
      imagePath: "lib/images/desserts/dessert3.jpg",
      price: 2.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Whipped cream", price: 0.79),
        Addon(name: "Chopped nuts", price: 0.99),
      ],
    ),
    Food(
      name: "Apple Pie",
      description: "Warm apple pie with a flaky crust.",
      imagePath: "lib/images/desserts/dessert4.jpg",
      price: 3.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla ice cream", price: 0.99),
      ],
    ),
    Food(
      name: "Chocolate Chip Cookie",
      description: "Large chocolate chip cookie, baked fresh daily.",
      imagePath: "lib/images/desserts/dessert5.jpg",
      price: 1.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Milk", price: 0.79),
      ],
    ),

    // drinks
    Food(
      name: "Coca-Cola",
      description: "Classic Coca-Cola soft drink.",
      imagePath: "lib/images/drinks/drink1.jpg",
      price: 1.29,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra ice", price: 0.49),
      ],
    ),
    Food(
      name: "Lemonade",
      description: "Refreshing lemonade made with real lemons.",
      imagePath: "lib/images/drinks/drink2.jpg",
      price: 1.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Mint", price: 0.79),
      ],
    ),
    Food(
      name: "Iced Coffee",
      description: "Chilled coffee with milk and sugar.",
      imagePath: "lib/images/drinks/drink3.jpg",
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra shot of espresso", price: 0.99),
      ],
    ),
    Food(
      name: "Milkshake",
      description: "Thick and creamy milkshake in vanilla, chocolate, or strawberry.",
      imagePath: "lib/images/drinks/drink4.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Whipped cream", price: 0.79),
        Addon(name: "Sprinkles", price: 0.99),
      ],
    ),
    Food(
      name: "Orange Juice",
      description: "Freshly squeezed orange juice.",
      imagePath: "lib/images/drinks/drink5.jpg",
      price: 1.79,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Pulp", price: 0.49),
      ],
    ),
  ];

  // Get the menu
  List<Food> get menu => _menu;
}
