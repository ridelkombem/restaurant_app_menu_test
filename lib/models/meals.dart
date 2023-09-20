import '../models/meal.dart';

class Meals {
  final List<Meal> items = [
    Meal(
      id: 'm1',
      price: 7.50,
      categories: [
        'c1',
      ],
      title: 'Iceberg Wedge Salad with House Cured Bacon',
      affordability: Affordability.affordable,
      complexity: Complexity.simple,
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
      ingredients: [
        'Tomato',
        'Salsa',
        'Gorgonzola',
      ],
      isGlutenFree: false,
      isVegan: true,
      isVegetarian: true,
      isLactoseFree: true,
    ),
    Meal(
      id: 'm2',
      categories: [
        'c1',
      ],
      title: 'Sautéed Shredded Brussels Sprouts',
      affordability: Affordability.affordable,
      complexity: Complexity.simple,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      price: 6.95,
      ingredients: [
        'Bacon',
        'Hazelnuts',
        'Gorgonzola',
      ],
      isGlutenFree: false,
      isVegan: true,
      isVegetarian: true,
      isLactoseFree: true,
    ),
    Meal(
      id: 'm3',
      categories: [
        'c2',
      ],
      title: 'Farfalle Pasta with Braised Pork in Tomato Cream',
      affordability: Affordability.affordable,
      complexity: Complexity.simple,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      price: 12.95,
      ingredients: [
        'capers',
        'butternut',
        'squash ',
        'kale',
      ],
      isGlutenFree: false,
      isVegan: false,
      isVegetarian: false,
      isLactoseFree: false,
    ),
    Meal(
      id: 'm4',
      categories: [
        'c2',
      ],
      title: 'Stout Braised Bratwusrt',
      affordability: Affordability.pricey,
      complexity: Complexity.simple,
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
      price: 13.95,
      ingredients: [
        'horseradish',
        'mashed potatoes',
        'roasted root veggies',
        'grilled onion',
      ],
      isGlutenFree: false,
      isVegan: false,
      isVegetarian: false,
      isLactoseFree: true,
    ),
    Meal(
      id: 'm5',
      categories: [
        'c3',
      ],
      title:
          'Served with choice of house pasta salad, green salad, or fresh fruit.',
      affordability: Affordability.luxurious,
      complexity: Complexity.challenging,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
      price: 15,
      ingredients: [
        '1/2 pasta salad(+\$1.50)',
        'French Onion Soup(+\$1.50)',
        'Soup of the day(+\$1.50)',
      ],
      isGlutenFree: false,
      isVegan: false,
      isVegetarian: false,
      isLactoseFree: false,
    ),
    Meal(
      id: 'm6',
      categories: ['c4'],
      title: 'Half Sandwich',
      affordability: Affordability.luxurious,
      complexity: Complexity.simple,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
      price: 7.95,
      ingredients: ['Choice of sourdough', 'whole wheat', 'rye bread'],
      isGlutenFree: true,
      isVegan: false,
      isVegetarian: true,
      isLactoseFree: true,
    ),
    Meal(
      id: 'm7',
      categories: [
        'c4',
      ],
      title: 'Pub Club ',
      affordability: Affordability.affordable,
      complexity: Complexity.hard,
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
      price: 10,
      ingredients: ['turkey', 'bacon', 'lettuce', 'tomato'],
      isGlutenFree: true,
      isVegan: false,
      isVegetarian: true,
      isLactoseFree: false,
    ),
    Meal(
      id: 'm8',
      categories: [
        'c5',
      ],
      title: 'Choice of whole wheat or cheese & onion bun',
      affordability: Affordability.affordable,
      complexity: Complexity.simple,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
      price: 20,
      ingredients: [''],
      isGlutenFree: true,
      isVegan: false,
      isVegetarian: true,
      isLactoseFree: false,
    ),
    Meal(
      id: 'm9',
      categories: [
        'c5',
      ],
      title: 'Southwest Chicken Breast Grilled Onion',
      affordability: Affordability.pricey,
      complexity: Complexity.challenging,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
      price: 9.50,
      ingredients: [
        'Poblano Pepper',
        'Tomato',
        'Lettuce',
        'Jack Cheese',
      ],
      isGlutenFree: true,
      isVegan: false,
      isVegetarian: false,
      isLactoseFree: true,
    ),
    Meal(
      id: 'm10',
      categories: [
        'c6',
      ],
      title: 'French Onion or Soup of the Day',
      affordability: Affordability.affordable,
      complexity: Complexity.hard,
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
      price: 45,
      ingredients: [''],
      isGlutenFree: true,
      isVegan: false,
      isVegetarian: true,
      isLactoseFree: false,
    ),
    Meal(
      id: 'm11',
      categories: [
        'c7',
      ],
      title: 'Fajitas',
      affordability: Affordability.luxurious,
      complexity: Complexity.simple,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
      price: 10.95,
      ingredients: [
        'red rice,',
        '3black bean',
        'grilled tomato salad',
        'choice of corn',
        'flour tortillas'
      ],
      isGlutenFree: true,
      isVegan: true,
      isVegetarian: true,
      isLactoseFree: true,
    ),
    Meal(
      id: 'm12',
      price: 7.50,
      categories: [
        'c8',
      ],
      title: 'Enchiladas',
      affordability: Affordability.affordable,
      complexity: Complexity.simple,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      ingredients: [
        'Southwestern Succotash,',
        'Black Beans ',
        'Chipotle Crema',
      ],
      isGlutenFree: false,
      isVegan: true,
      isVegetarian: true,
      isLactoseFree: true,
    ),
    Meal(
      id: 'm13',
      categories: [
        'c9',
      ],
      title: 'Quiche',
      affordability: Affordability.affordable,
      complexity: Complexity.simple,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      price: 8.95,
      ingredients: [
        'Bacon',
        'Swiss',
        'Mushroom',
        'Zucchini',
        'Spices',
        'Cheese (optional)'
      ],
      isGlutenFree: false,
      isVegan: true,
      isVegetarian: true,
      isLactoseFree: true,
    ),
    Meal(
      id: 'm14',
      categories: [
        'c11',
      ],
      title: 'Grilled Red Trout Lentils, ',
      affordability: Affordability.affordable,
      complexity: Complexity.simple,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      price: 10.95,
      ingredients: [
        '1 Slice White Bread',
        '1 Slice Ham',
        '1 Slice Pineapple',
        '1-2 Slices of Cheese',
        'Butter'
      ],
      isGlutenFree: false,
      isVegan: false,
      isVegetarian: false,
      isLactoseFree: false,
    ),
    Meal(
      id: 'm15',
      categories: [
        'c11',
      ],
      title: 'Smoked Turkey Cheese ',
      affordability: Affordability.pricey,
      complexity: Complexity.simple,
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
      price: 9.95,
      ingredients: [
        '300g Cattle Hack',
        '1 Tomato',
        '1 Cucumber',
        '1 Onion',
        'Ketchup',
        '2 Burger Buns'
      ],
      isGlutenFree: false,
      isVegan: false,
      isVegetarian: false,
      isLactoseFree: true,
    ),
    Meal(
      id: 'm16',
      categories: [
        'c10',
      ],
      title: 'Wiener Schnitzel',
      affordability: Affordability.luxurious,
      complexity: Complexity.challenging,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
      price: 60,
      ingredients: [
        '8 Veal Cutlets',
        '4 Eggs',
        '200g Bread Crumbs',
        '100g Flour',
        '300ml Butter',
        '100g Vegetable Oil',
        'Salt',
        'Lemon Slices'
      ],
      isGlutenFree: false,
      isVegan: false,
      isVegetarian: false,
      isLactoseFree: false,
    ),
  ];
}
