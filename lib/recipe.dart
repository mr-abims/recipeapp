class Recipe {
  String label;
  String imageUrl;
  // Todo; Add servings and ingredient here

  Recipe(
    this.label,
    this.imageUrl,
  );
  // TODO: Add List <Recipe> here
  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and meatballs',
      'assets/2126711929_ef763de2b3_w.jpg',
    ),
    Recipe('Tomato Soup', 'assets/27729023535_a57606c1be.jpg'),
    Recipe(
      'Grilled Cheese',
      'assets/3187380632_5056654a19_b.jpg',
    ),
    Recipe(
      'Chocolate chip cookies',
      'assets/159921102771_b92f4cc0a_b.jpg',
    ),
    Recipe(
      'Taco Salad',
      'assets/8533381643_a31a99e8a6_c.jpg',
    ),
    Recipe(
      'Hawallian pizza',
      'assets/15452035777_294cefced5_c.jpg',
    ),
  ];
}


// TODO: Add Ingredient() here
