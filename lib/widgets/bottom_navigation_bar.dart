import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

ValueNotifier<int> screenChangeNotifier = ValueNotifier(0);

class BottomNavigationDrawer extends StatelessWidget {
  const BottomNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: screenChangeNotifier, builder: (context, int newIndex, _) {
      return BottomNavigationBar(
      currentIndex: newIndex,
      onTap: (value) {
        screenChangeNotifier.value = value;
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color.fromARGB(255, 0, 4, 9),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: const IconThemeData(color: Colors.white),
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',),
      BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.bagShopping),label: 'Store'),
      BottomNavigationBarItem(icon: Icon(Icons.live_tv_rounded),label: 'Live TV'),
      BottomNavigationBarItem(icon: Icon(Icons.download),label: 'Downloads'),
      BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
    ]);
    },);
  }
}