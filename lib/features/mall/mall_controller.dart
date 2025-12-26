import 'package:get/get.dart';
import 'models/product_item.dart';

class MallController extends GetxController {
  final products = <ProductItem>[].obs;
  final filteredProducts = <ProductItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadMockProducts();
  }

  void loadMockProducts() {
    products.assignAll([
      ProductItem(
        id: 'AAB0001',
        title: 'Plant Cleanser',
        subtitle: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        image: 'assets/images/plant_image.jpg',
        originalPrice: 160,
        discount: 0,
      ),
      ProductItem(
        id: 'AAB0002',
        title: 'Plant Serum',
        subtitle: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        image: 'assets/images/plant_image.jpg',
        originalPrice: 150,
        discount: 50,
      ),
      ProductItem(
        id: 'AAB0003',
        title: 'Plant Kit Basic',
        subtitle: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        image: 'assets/images/plant_image.jpg',
        originalPrice: 90,
        discount: 30,
      ),
      ProductItem(
        id: 'AAB0004',
        title: 'Fruit Serum',
        subtitle: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        image: 'assets/images/plant_image.jpg',
        originalPrice: 240,
        discount: 50,
      ),
      ProductItem(
        id: 'AAD0001',
        title: 'Magic Water Spray',
        subtitle: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        image: 'assets/images/plant_image.jpg',
        originalPrice: 100,
        discount: 10,
      ),
      ProductItem(
        id: 'AAD0002',
        title: 'Plant Kit Premium',
        subtitle: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        image: 'assets/images/plant_image.jpg',
        originalPrice: 120,
        discount: 25,
      ),
      ProductItem(
        id: 'AAD0003',
        title: 'Premium Fertilizer',
        subtitle: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        image: 'assets/images/plant_image.jpg',
        originalPrice: 160,
        discount: 0,
      ),
    ]);

    filteredProducts.assignAll(products);
  }

  void search(String query) {
    if (query.isEmpty) {
      filteredProducts.assignAll(products);
    } else {
      filteredProducts.assignAll(
        products.where(
              (item) =>
              item.title.toLowerCase().contains(query.toLowerCase()),
        ),
      );
    }
  }
}
