class Recipe {
  String label;
  String imageUrl;

  int serving;
  List<Ingredient> ingredients;
  // TODO:몇인분, 재료

  Recipe(this.label, this.imageUrl, this.serving, this.ingredients);

  // TODO: recipes list

  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/food1.jpeg',
      4,
      [
        Ingredient(
          1,
          'box',
          'Spaghetti',
        ),
        Ingredient(
          4,
          '',
          'Frozen Meatballs',
        ),
        Ingredient(
          0.5,
          'jar',
          'sauce',
        ),
      ],
    ),
    Recipe(
      'Tomato Soup',
      'assets/food1.jpeg',
      2,
      [
        Ingredient(
          1,
          'can',
          'Tomato Soup',
        ),
      ],
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/food1.jpeg',
      24,
      [
        Ingredient(
          4,
          'cups',
          'flour',
        ),
        Ingredient(
          2,
          'cups',
          'sugar',
        ),
        Ingredient(
          0.5,
          'cups',
          'chocolate chips',
        ),
      ],
    ),
    Recipe(
      'Taco Salad',
      'assets/food1.jpeg',
      1,
      [
        Ingredient(
          4,
          'oz',
          'nachos',
        ),
        Ingredient(
          3,
          'oz',
          'taco meat',
        ),
        Ingredient(
          0.5,
          'cup',
          'cheese',
        ),
        Ingredient(
          0.25,
          'cup',
          'chopped tomatoes',
        ),
      ],
    ),
  ];
}

class Ingredient {
  double quantity;
  String measuere; // 재료
  String name; //이름

  Ingredient(this.quantity, this.measuere, this.name);
}
