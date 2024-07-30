import 'package:flutter/cupertino.dart';
import 'package:minimal_ecomm/models/product.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    //1
    Product(
        name: 'Patek Philippe - Nautilus SELF-WINDING',
        description:
            'The steel Nautilus, endowed with an Annual Calendar and moon-phase display, now features a new blue dial inspired from the dial color of the original Nautilus model of 1976. Horizontal embossing and subtle grading from blue to black',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/5726_1A_014_1.jpg',
        price: 1400000),
    //2
    Product(
        name: 'Patek Philippe Nautilus 7118/1A-001',
        description:
            'The steel Nautilus, endowed with an Annual Calendar and moon-phase display, now features a new blue dial inspired from the dial color of the original Nautilus model of 1976. Horizontal embossing and subtle grading from blue to bla',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/5990_1A_011_1.jpg',
        price: 100000),
    //3
    Product(
        name: 'Patek Philippe 5990/1R - NAUTILUS SELF-WINDING',
        description:
            'Patek Philippe presents the Nautilus Travel Time Chronograph Reference 5990/1 in a generous rose gold version contrasting with the sunburst blue dial featuring an embossed horizontal pattern and applied hour-markers. The baton-style hands are in rose gold with a luminescent coating. This new model combines three highly sought-after complications: a self-winding flyback chronograph, an easy-to-use Travel Time function (dual time-zone), and a date display, coupled with local time.',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/5990_1R_001_1.jpg',
        price: 499000),
    //4
    Product(
        name: 'Patek Philippe 5719/10G - NAUTILUS SELF-WINDING',
        description:
            'With the rounded octagonal shape of its bezel, the ingenious porthole construction of its case, and its horizontally embossed dial, the Nautilus has epitomized the elegant sports watch since 1976. Forty years later, it comprises a splendid collection of models for men and women. In steel, rose gold, white gold or two-tone combinations they accompany the most active lifestyles with incomparable class.',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/5719_10G_010.jpg',
        price: 794825),
    Product(
        name: 'Patek Philippe - Nautilus SELF-WINDING',
        description: 'The steel Nautilus, endowed with an Annual Calendar and moon-phase display, now features a new blue dial inspired from the dial color of the original Nautilus model of 1976. Horizontal embossing and subtle grading from blue to black',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/5726_1A_014_1.jpg',
        price: 1400000
    ),
    Product(
        name: 'Patek Philippe - Aquanaut',
        description: 'The Aquanaut collection features sporty and modern timepieces with a distinctive rounded octagonal shape. These watches are suitable for various activities, including diving and water sports.',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/5168G_010_1.jpg',
        price: 500000
    ),
    Product(
        name: 'Patek Philippe - Calatrava',
        description: 'The Calatrava collection offers classic and elegant dress watches with timeless designs. These watches are characterized by their clean lines and minimalist aesthetics, making them suitable for formal occasions.',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/5088_100P_001_1.jpg',
        price: 300000
    ),
    Product(
        name: 'Patek Philippe - Grand Complications Perpetual Calendar',
        description: 'A masterpiece of haute horlogerie, this Grand Complications watch features a perpetual calendar, moon-phase display, and chronograph functionality. Crafted with exquisite attention to detail and precision engineering.',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/5270P_001_1.jpg',
        price: 2000000
    ),
    Product(
        name: 'Patek Philippe - Twenty-4 Automatic',
        description: 'The Twenty-4 collection offers elegant and versatile timepieces for women. This model features an automatic movement and a rectangular case set with diamonds, combining sophistication with modernity.',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/7300_1200A_011_1.jpg',
        price: 35000
    ),
    Product(
        name: 'Patek Philippe - Gondolo',
        description: 'Inspired by Art Deco design, the Gondolo collection features distinctive rectangular or tonneau-shaped cases. These watches often showcase intricate craftsmanship and decorative elements, embodying timeless elegance.',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/7041R_001.jpg',
        price: 400000
    ),
    Product(
        name: 'Patek Philippe - Perpetual Calendar Chronograph',
        description: 'A highly complicated timepiece featuring a perpetual calendar, chronograph, and moon-phase display. Crafted with precision and attention to detail, this watch is a testament to Patek Philippe\'s expertise in watchmaking.',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/5270P_014_1.jpg',
        price: 2500000
    ),
    Product(
        name: 'Patek Philippe - Golden Ellipse',
        description: 'The Golden Ellipse collection showcases elegant and understated watches with an iconic elliptical case. These timeless timepieces feature simple yet sophisticated designs, making them suitable for any occasion.',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/5738R_001_1.jpg',
        price: 100000
    ),
    Product(
        name: 'Patek Philippe - Celestial',
        description: 'The Celestial collection features watches with astronomical complications, displaying the positions of the stars and moon as seen from a specific location on Earth. These watches combine technical excellence with artistic beauty.',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/6102P_001_1.jpg',
        price: 3000000
    ),
    Product(
        name: 'Patek Philippe - World Time',
        description: 'The World Time collection offers watches with a unique world time function, allowing the wearer to simultaneously view the time in multiple cities around the world. These watches are perfect for frequent travelers and global citizens.',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/5230G_001_1.jpg',
        price: 150000
    ),
  ];

  final List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    if (_cart.isNotEmpty) _cart.remove(product);
    notifyListeners();
  }
}
