// class ProductItem {
//   final String title;
//   final String image;
//   final double price;
//   final double originalPrice;
//   final int discount;
//
//   ProductItem({
//     required this.title,
//     required this.image,
//     required this.price,
//     required this.originalPrice,
//     required this.discount,
//   });
// }


class ProductItem {
  final String id;
  final String title;
  final String subtitle;
  final String image;
  final double originalPrice;
  final int discount; // percentage

  const ProductItem({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.originalPrice,
    required this.discount,
  });

  /// Computed final price
  double get finalPrice {
    if (discount <= 0) return originalPrice;
    return originalPrice * (1 - discount / 100);
  }

  bool get hasDiscount => discount > 0;
}
