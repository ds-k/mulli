import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constant/colors.dart';
import '../home/home_page.dart';
import '../shop/shop_page.dart';
import '../chat/chat_page.dart';
import '../profile/profile_page.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    ShopPage(),
    ChatPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: AppColors.lightGray,
              width: 1,
            ),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/bn_icons/home.svg',
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 0 ? AppColors.black : AppColors.darkGray,
                  BlendMode.srcIn,
                ),
              ),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/bn_icons/shop.svg',
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 1 ? AppColors.black : AppColors.darkGray,
                  BlendMode.srcIn,
                ),
              ),
              label: '쇼핑',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/bn_icons/chat.svg',
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 2 ? AppColors.black : AppColors.darkGray,
                  BlendMode.srcIn,
                ),
              ),
              label: '채팅',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/bn_icons/profile.svg',
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 3 ? AppColors.black : AppColors.darkGray,
                  BlendMode.srcIn,
                ),
              ),
              label: '프로필',
            ),
          ],
        ),
      ),
    );
  }
}
