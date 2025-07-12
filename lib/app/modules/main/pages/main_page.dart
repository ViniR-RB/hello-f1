import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final ValueNotifier<int> _currentIndex = ValueNotifier<int>(0);

  final List<Map<String, BottomNavigationBarItem>> _bottomItems = [
    {
      "news": const BottomNavigationBarItem(
        icon: Icon(Icons.newspaper_outlined),
        activeIcon: Icon(Icons.newspaper),
        tooltip: "Notícias",
        label: "Notícias",
      ),
    },
    {
      "profile": const BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        activeIcon: Icon(Icons.person),
        tooltip: "Perfil",
        label: "Perfil",
      ),
    },
  ];

  @override
  void initState() {
    super.initState();
    Modular.to.navigate('/main/news');

    _currentIndex.addListener(() {
      final String route =
          "/main/${_bottomItems[_currentIndex.value].keys.first}";
      Modular.to.navigate(route);
    });
  }

  @override
  void dispose() {
    _currentIndex.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    _currentIndex.value = index;
  }

  Widget _buildBottomNavigationBar() {
    return ValueListenableBuilder<int>(
      valueListenable: _currentIndex,
      builder: (context, currentIndex, child) {
        return BottomNavigationBar(
          items: _bottomItems.map((item) => item.values.first).toList(),
          currentIndex: currentIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(
            context,
          ).bottomNavigationBarTheme.selectedItemColor,
          unselectedItemColor: Theme.of(
            context,
          ).bottomNavigationBarTheme.unselectedItemColor,
          backgroundColor: Theme.of(
            context,
          ).bottomNavigationBarTheme.backgroundColor,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
          elevation: 8,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const RouterOutlet(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
