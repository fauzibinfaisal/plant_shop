import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../account/account_page.dart';
import '../home/home_page.dart';
import '../mall/mall_page.dart';
import '../discover/discover_page.dart';
import '../inbox/inbox_page.dart';
import 'root_controller.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RootController());

    return Obx(() {
      return Scaffold(
        body: IndexedStack(
          index: controller.currentIndex.value,
          children: const [
            HomePage(),
            MallPage(),
            DiscoverPage(),
            InboxPage(),
            AccountPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeTab,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/nav_icon_home.png'),
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/nav_icon_mall.png'),
              ),
              label: 'Mall',
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/nav_icon_discover.png'),
              ),
              label: 'Discover',
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/nav_icon_inbox.png'),
              ),
              label: 'Inbox',
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/nav_icon_account.png'),
              ),
              label: 'Account',
            ),
          ],
        ),
      );
    });
  }
}
