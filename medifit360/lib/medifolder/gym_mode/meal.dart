class Meal {
  final String mealTime, name, imagePath, kiloCaloriesBurnt, timeTaken;
  final String preparation;
  final List ingredients;

  Meal(
      {required this.mealTime,
      required this.name,
      required this.imagePath,
      required this.kiloCaloriesBurnt,
      required this.timeTaken,
      required this.preparation,
      required this.ingredients});
}

final meals = [
  Meal(
      mealTime: "BREAKFAST",
      name: "Fruit Granola",
      kiloCaloriesBurnt: "271",
      timeTaken: "10",
      imagePath: "assets/images/fruit_granola.jpg",
      ingredients: [
        "1 cup of granola",
        "1 banana",
        "1/2 cup of raisins",
        "1 tbsp of honey",
      ],
      preparation:
          '''Granola is a breakfast and snack food consisting of rolled oats, nuts, honey or other sweeteners such as brown sugar, and sometimes puffed rice, that is usually baked until it is crisp, toasted and golden brown. During the baking process, the mixture is stirred to maintain a loose breakfast cereal consistency'''),
  Meal(
      mealTime: "DINNER",
      name: "Pesto Pasta",
      kiloCaloriesBurnt: "612",
      timeTaken: "15",
      imagePath: "assets/images/pesto_pasta.jpg",
      ingredients: [
        "1 cup of granola",
        "1 banana",
        "1/2 cup of raisins",
        "1 tbsp of honey",
      ],
      preparation:
          ''' Heat a pan and place ¼ cup almonds on it. Keep the heat to a low.Lightly toast the almonds stirring often for 2 to 3 minutes. Remove the lightly toasted almonds from the pan and place them on a separate plate and let them cool at room temperature.Then place the almonds in a food processor or food chopper or a small to medium grinder jar. I have used a food chopper.Rinse 2 cups (50 grams) of basil leaves. Then place leaves in a colander or strainer to dry naturally or you can use a salad spinner to dry them quicker. Add the basil leaves to the food chopper. Also add 2 small to medium garlic cloves. Optionally you can also add 4 to 5 wholeblack peppers. Sprinkle ⅛ teaspoon salt or add as required.Blend to a semi fine or fine consistency. You can blend to a smooth or chunkier sauce according to your preferences. You can also add a  few drops of lemon juice to preserve the green color.Process or crush the basil leaves while adding olive oil in parts from the top. Add a total of ⅓ cup extra virgin olive oil. In case you add extra virgin olive oil directly to the jar, then add in parts and process.
Brin5 to 6 cups water to a boil on a medium to high flame. Add1 teaspoon salt or as required to the water.When the water comes to a boil, then add 2 cups fusilli or macaroni pasta (200 grams).Cook the pasta until it is al dente. Or, if you prefer, cook pasta until it is completely done.With a slotted spoon, remove the pasta from the pan. Drain it very well.Serve pesto pasta garnished with some vegetarian parmesan cheese. You can also garnish with cheddar cheese or vegan cheese. Garnish is optional. Pesto pasta can be served warm or at room temperature.Add all of the prepared pesto sauce and mix very well. If you want you can add some lemon juice, or crushed black pepper or extra virgin olive oil at this point.Add the cooked pasta in a mixing bowl.'''),
  Meal(
      mealTime: "SNACK",
      name: "Keto Snack",
      kiloCaloriesBurnt: "414",
      timeTaken: "16",
      imagePath: "assets/images/keto_snack.jpg",
      ingredients: [
        "1 cup of granola",
        "1 banana",
        "1/2 cup of raisins",
        "1 tbsp of honey",
      ],
      preparation:
          '''When you’re on a keto diet, snacking is a little more complicated.
The keto diet involves sticking to foods that are high in protein and fat, but most popular foods in the snack aisle are heavy in carbs.

Worry not! All joy is not lost. There are plenty of delicious keto snacks still available to you. These options are healthier overall, and likely to keep you full until the next mealtime. 
We’ve partnered withIn The Raw Sweeteners to talk about low carb, high fat and protein snack options, and how best to prepare them.
Here are 21 keto-friendly snacks to include in your next meal plan.
'''),
];
