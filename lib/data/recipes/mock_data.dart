final mockRecipes = [
  {
    "id": 0,
    "imageUrl":
        "https://cdn.pixabay.com/photo/2017/01/17/17/05/spaghetti-1987454_1280.jpg",
    "name": "Spaghetti Bolognese"
  },
  {
    "id": 1,
    "imageUrl":
        "https://cdn.pixabay.com/photo/2017/03/23/19/57/asparagus-2169305_1280.jpg",
    "name": "Asparagus steak with fresh salad"
  },
  {
    "id": 2,
    "imageUrl":
        "https://cdn.pixabay.com/photo/2017/05/07/08/56/pancakes-2291908_1280.jpg",
    "name": "Pancakes with Maple syrup and Raspberries",
  },
  {
    "id": 3,
    "imageUrl":
        "https://cdn.pixabay.com/photo/2021/08/01/15/54/berries-6514669_1280.jpg",
    "name": "Pudding",
  },
  {
    "id": 4,
    "imageUrl":
        "https://cdn.pixabay.com/photo/2018/02/08/15/02/meat-3139641_1280.jpg",
    "name": "Steak",
  },
  {
    "id": 5,
    "imageUrl":
        "https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_1280.jpg",
    "name": "Pizza",
  },
  {
    "id": 6,
    "imageUrl":
        "https://cdn.pixabay.com/photo/2017/09/28/18/13/bread-2796393_1280.jpg",
    "name": "Egg",
  },
];

const mockRecipeDetails = [
  {
    "id": "0",
    "imageUrl":
        "https://cdn.pixabay.com/photo/2017/01/17/17/05/spaghetti-1987454_1280.jpg",
    "ingredients": [
      {"ing_measure": 2, "ing_name": "olive oil", "ing_unit": "tbsp"},
      {"ing_measure": 400, "ing_name": "beef mince", "ing_unit": "q"},
      {"ing_measure": 1, "ing_name": "onion"},
      {"ing_measure": 2, "ing_name": "olive oil", "ing_unit": "tbsp"},
      {"ing_measure": 400, "ing_name": "spaghetti", "ing_unit": "g"}
    ],
    "kcal": 700,
    "minutes": 45,
    "name": "Spaghetti Bolognese",
    "steps":
        "Heat a large saucepan over a medium heat. Add a tablespoon of olive oil and once hot add the beef mince and a pinch of salt and pepper. Cook the mince until well browned over a medium-high heat (be careful not to burn the mince.It just needs to be a dark brown colour). \nOnce browned, transfer the mince to a bowl and set aside.Add another tablespoon of oil to the saucepan you browned the mince in and turn the heat to medium. Add the onions and a pinch of salt and fry gently for 5-6 minutes, or until softened and translucent. Add the garlic and cook for another 2 minutes.\nAdd the grated carrot then pour the mince and any juices in the bowl back into the saucepan.When ready to cook the spaghetti, heat a large saucepan of water and add a pinch of salt. Cook according to the packet instructions. Once the spaghetti is cooked through, drain and add to the pan with the bolognese sauce. Mix well and serve for 4 people.",
  },
  {
    "id": "1",
    "imageUrl":
        "https://cdn.pixabay.com/photo/2017/03/23/19/57/asparagus-2169305_1280.jpg",
    "ingredients": [
      {"ing_measure": 1, "ing_name": "asparagus", "ing_unit": "bunch"},
      {"ing_measure": 3, "ing_name": "canola oil", "ing_unit": "tablespoons"},
      {"ing_measure": 1, "ing_name": "onion"},
      {"ing_measure": 2, "ing_name": "strip steaks", "ing_unit": "boneless"}
    ],
    "kcal": 400,
    "minutes": 25,
    "name": "Asparagus steak with fresh salad",
    "steps":
        "Season the steaks on all sides with the salt and pepper.\nHeat oil in a pan or a skillet over high heat until smoking.\nSear the steaks for about a minute to a minute and a half on each side, depending on the thickness of your steak for medium-rare. If you would like your steak rarer or more well-done, cook your steak shorter or longer accordingly.\nIn the same pan, cook the asparagus with salt and pepper until tender but still slightly crunchy. Remove from heat.\nAfter the steaks have rested for about 5 minutes, slice, then serve with the asparagus!"
  },
  {
    "id": "2",
    "imageUrl":
        "https://cdn.pixabay.com/photo/2017/05/07/08/56/pancakes-2291908_1280.jpg",
    "ingredients": [
      {"ing_measure": 1, "ing_name": "all-purpose flour", "ing_unit": "cup"},
      {"ing_measure": 2, "ing_name": "white sugar", "ing_unit": "tablespoons"},
      {"ing_measure": 2, "ing_name": "baking powder", "ing_unit": "teaspoons"},
      null,
      {"ing_measure": 1, "ing_name": "egg"},
      {"ing_measure": 1, "ing_name": "milk", "ing_unit": "cup"},
      {
        "ing_measure": 2,
        "ing_name": "vegetable oil",
        "ing_unit": "tablespoons"
      },
      {"ing_name": "Maple syrup, raspberry by taste"}
    ],
    "kcal": 250,
    "minutes": 25,
    "name": "Pancakes with Maple syrup and Raspberries",
    "steps":
        "In a large bowl, mix flour, sugar, baking powder and salt. Make a well in the center, and pour in milk, egg and oil.\nMix until smooth.Heat a lightly oiled griddle or frying pan over medium high heat. Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot."
  },
  {
    "id": "3",
    "imageUrl":
        "https://cdn.pixabay.com/photo/2021/08/01/15/54/berries-6514669_1280.jpg",
    "ingredients": [
      {"ing_measure": 200, "ing_name": "berries", "ing_unit": "g"},
    ],
    "kcal": 200,
    "minutes": 15,
    "name": "Pudding",
    "steps": "Steps",
  },
  {
    "id": "4",
    "imageUrl":
        "https://cdn.pixabay.com/photo/2018/02/08/15/02/meat-3139641_1280.jpg",
    "ingredients": [
      {"ing_measure": 2, "ing_name": "meat", "ing_unit": "kg"},
    ],
    "kcal": 666,
    "minutes": 75,
    "name": "Steak",
    "steps": "Cook",
  },
  {
    "id": "5",
    "imageUrl":
        "https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_1280.jpg",
    "ingredients": [
      {"ing_measure": 400, "ing_name": "flour", "ing_unit": "g"}
    ],
    "kcal": 1200,
    "minutes": 60,
    "name": "Pizza",
    "steps": "Cook",
  },
  {
    "id": "6",
    "imageUrl":
        "https://cdn.pixabay.com/photo/2017/09/28/18/13/bread-2796393_1280.jpg",
    "ingredients": [
      {"ing_measure": 2, "ing_name": "eggs"},
      {"ing_measure": 400, "ing_name": "water", "ing_unit": "ml"}
    ],
    "kcal": 250,
    "minutes": 10,
    "name": "Eggs",
    "steps": "Booooil",
  },
];
