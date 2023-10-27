class ExampleData {
  ExampleData._internal();

  static List<String> images = [
    "https://github.com/wayne900204/vertical_scrollable_tabview/blob/main/example/assets/food.jpeg?raw=true",
    "https://github.com/wayne900204/vertical_scrollable_tabview/blob/main/example/assets/food.jpeg?raw=true",
    "https://github.com/wayne900204/vertical_scrollable_tabview/blob/main/example/assets/food.jpeg?raw=true",
    "https://github.com/wayne900204/vertical_scrollable_tabview/blob/main/example/assets/food.jpeg?raw=true",
    "https://github.com/wayne900204/vertical_scrollable_tabview/blob/main/example/assets/food.jpeg?raw=true",
  ];

  static List<CategoryList> data =
  [
    category1,
    category2,
    category3,
    category4,
    category4,
    category4,
    category3,
    category4,
    category4,
    category3,
  ];

  static CategoryList category1 = CategoryList(
    title: "Со скидкой",
   // isHotSale: true,
    foods: List.generate(
      7,
          (index) {
        return Food(
          name: "Плов",
          description: "Своим именем чайханский плов обязан старой ташкентской традиции «ош»...",
          price: "47 000 сум",
          imageUrl: images[index % images.length],
     //     isHotSale: false,
        );
      },
    ),
  );

  static CategoryList category2 = CategoryList(
    title: "Плов",
   // isHotSale: false,
    foods: List.generate(
      3,
          (index) {
        return Food(
          name: "Плов",
          description: "Своим именем чайханский плов обязан старой ташкентской традиции «ош»...",
          price: "32300",
          imageUrl: images[index % images.length],
    //      isHotSale: index == 2 ? true : false,
        );
      },
    ),
  );

  static CategoryList category3 = CategoryList(
    title: "Plov",
  //  isHotSale: false,
    foods: List.generate(
      1,
          (index) {
        return Food(
          name: "Плов",
          description: "Своим именем чайханский плов обязан старой ташкентской традиции «ош»...",
          price: "37000",
          imageUrl: images[index % images.length],
     //     isHotSale: false,
        );
      },
    ),
  );

  static CategoryList category4 = CategoryList(
    title: "Наши рекомендации",
   // isHotSale: false,
    foods: List.generate(
      5,
          (index) {
        return Food(
          name: "Чайханский плов",
          description: "Своим именем чайханский плов обязан старой ташкентской традиции «ош»...",
          price: "34540",
          imageUrl: images[index % images.length],
    //      isHotSale: index == 3 ? true : false,
        );
      },
    ),
  );
}

class CategoryList {
  String title;

  List<Food> foods;
  //bool isHotSale;

  CategoryList({
    required this.title,
    required this.foods,
   // required this.isHotSale,
  });
}

class Food {
  String name;
  String description;
  String price;
  String imageUrl;
//  bool isHotSale;

  Food({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  //  required this.isHotSale,
  });
}