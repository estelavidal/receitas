class Receita{
  String label;
  String imageUrl;
  Receita(
  this.label,
  this.imageUrl,
  );
  static List<Receita> samples = [
    Receita(
    'Spaghetti and Meatballs',
    'assets/2126711929_ef763de2b3_w.jpg',
),
    Receita(
    'Tomato Soup',
    'assets/27729023535_a57606c1be.jpg',
),
    Receita(
    'Grilled Cheese',
    'assets/3187380632_5056654a19_b.jpg',
),
    Receita(
    'Chocolate Chip Cookies',
    'assets/15992102771_b92f4cc00a_b.jpg',
),
    Receita(
    'Taco Salad',
    'assets/8533381643_a31a99e8a6_c.jpg',
),
    Receita(
    'Hawaiian Pizza',
    'assets/15452035777_294cefced5_c.jpg',
    )
  ];
}