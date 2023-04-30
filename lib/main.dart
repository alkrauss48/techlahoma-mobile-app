import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:techlahoma_mobile_app/pages/events_page.dart';
import 'package:techlahoma_mobile_app/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: const Color(0xFFf6c944),
        primaryColor: AppColors.yellow,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.black,
          foregroundColor: AppColors.white,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedTabIndex = 0;

  void _onTabItemTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const EventsPage(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.calendarCheck),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.building),
            label: 'Conferences',
          ),
        ],
        currentIndex: _selectedTabIndex,
        selectedItemColor: AppColors.darkYellow,
        onTap: _onTabItemTapped,
      ),
    );
  }
}
