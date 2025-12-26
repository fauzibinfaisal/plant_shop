import 'package:get/get.dart';
import 'models/service_item.dart';

class HomeController extends GetxController {
  final services = <ServiceItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadMockServices();
  }

  void loadMockServices() {
    services.assignAll([
      ServiceItem(
        title: 'Lorem ipsum',
        subtitle: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        image: 'assets/images/plant_image.jpg',
        price: 'RM 120',
      ),
      ServiceItem(
        title: 'Lorem ipsum',
        subtitle: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        image: 'assets/images/plant_image.jpg',
        price: 'RM 180',
      ),
      ServiceItem(
        title: 'Lorem ipsum',
        subtitle: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        image: 'assets/images/plant_image.jpg',
        price: 'RM 150',
      ),
      ServiceItem(
        title: 'Lorem ipsum',
        subtitle: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        image: 'assets/images/plant_image.jpg',
        price: 'RM 120',
      ),
      ServiceItem(
        title: 'Lorem ipsum',
        subtitle: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        image: 'assets/images/plant_image.jpg',
        price: 'RM 180',
      ),
      ServiceItem(
        title: 'Lorem ipsum',
        subtitle: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
        image: 'assets/images/plant_image.jpg',
        price: 'RM 150',
      ),
    ]);
  }
}
