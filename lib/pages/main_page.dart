import 'package:flutter/material.dart';
import 'package:saving_app/style/colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  static const nameRoute = '/main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      bottomNavigationBar: _customBottomNav(),
    );
  }

  Widget _customBottomNav() {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: kGrey,
            blurRadius: 20,
          ),
        ],
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home.png',
              width: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/portofolio.png',
              width: 24,
            ),
            label: 'Portofolio',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/support.png',
              width: 24,
            ),
            label: 'Support',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/profile.png',
              width: 24,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
