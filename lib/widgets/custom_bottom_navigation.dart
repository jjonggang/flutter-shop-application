import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {Key? key, required this.selectedPageIndex, required this.onIconTap})
      : super(key: key);
  final int selectedPageIndex;
  final Function onIconTap;
  final double _unselectedIconSize = 25;
  final double _selectedIconSize = 22;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 20),
        height: MediaQuery.of(context).size.height * 0.1, //전체 화면의 10퍼센트만 차지하도록
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, //**서로간에 간격 주기
          children: [
            // 네비게이션바 아이템 만들기
            _bottomNavItem(0, 'Home', Icons.home, Icons.home_outlined),
            _bottomNavItem(1, 'Search', Icons.search, Icons.search_outlined),
            _bottomNavItem(
                2, 'Shop', Icons.local_mall, Icons.local_mall_outlined),
            _bottomNavItem(3, 'Profile', Icons.account_circle,
                Icons.account_circle_outlined),
          ],
        ));
  }

//네비게이션 아이템 함수
  _bottomNavItem(
      int index, String label, IconData selectedIcon, IconData unselectedIcon) {
    return GestureDetector(
      onTap: () => {onIconTap(index)},
      child: selectedPageIndex == index
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: const Color(0xfff5e68e8),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Icon(
                    selectedIcon,
                    color: Colors.white,
                    size: _selectedIconSize,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ))
          : Icon(
              unselectedIcon,
              size: _unselectedIconSize,
            ),
    );
  }
}
