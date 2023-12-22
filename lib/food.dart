class Food {
  final String thFood;
  final String enFood;
  final double price;
  final String value;

  Food(
      {required this.thFood,
      required this.enFood,
      required this.price,
      required this.value});

  static List<Food> getFood() {
    return [
      Food(
          thFood: "ก๋วยเตี๋ยวหมูตุ๋น",
          enFood: "Rice noodle soup with Stewed pork",
          price: 45,
          value: "ก๋วยเตี๋ยวหมูตุ๋น"),
      Food(
          thFood: "ก๋วยเตี๋ยวหมูต้มยำ",
          enFood: "Spicy TOM YAM pork noodle",
          price: 50,
          value: "ก๋วยเตี๋ยวหมูต้มยำ"),
      Food(
          thFood: "ก๋วยเตี๋ยวเย็นตาโพ",
          enFood: "(Yen-Ta-Four) Red Tofu Clear Soup",
          price: 55,
          value: "ก๋วยเตี๋ยวเย็นตาโพ"),
      Food(
          thFood: "ก๋วยเตี๋ยวเนื้อเปื่อย",
          enFood: "Braised Beef Noodles Soup",
          price: 60,
          value: "ก๋วยเตี๋ยวเนื้อเปื่อย"),
    ];
  }
}
