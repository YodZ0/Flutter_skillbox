import 'package:flutter/material.dart';
// import 'package:skillbox_flutter_05/content/chat_content.dart';
// import 'package:skillbox_flutter_05/content/home_content.dart';
// import 'package:skillbox_flutter_05/content/music_content.dart';
import 'package:skillbox_flutter_05/widgets/bottom_sheet.dart';
import 'package:skillbox_flutter_05/widgets/drawer.dart';
import 'package:skillbox_flutter_05/widgets/end_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Tab> _tabBar = const [
    Tab(text: 'Tab 1'),
    Tab(text: 'Tab 2'),
    Tab(text: 'Tab 3'),
  ];

  final List<BottomNavigationBarItem> _bottomNavBar = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.chat),
      label: 'Chat',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.music_note),
      label: 'Music',
    ),
  ];

  // final List<Widget> _bottomNavBarContent = const <Widget>[
  //   HomeContent(),
  //   ChatContent(),
  //   MusicContent(),
  // ];

  final TextStyle _tabContentTextStyle = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabBar.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Material 05'),
          bottom: TabBar(
            tabs: _tabBar,
          ),
          actions: [
            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: const Icon(Icons.person_rounded),
                );
              }
            )
          ],
        ),
        drawer: const CustomDrawer(),
        endDrawer: const CustomEndDrawer(),
        body: TabBarView(
          children: [
            Center(child: Text('Tab 1 content', style: _tabContentTextStyle)),
            Center(child: Text('Tab 2 content', style: _tabContentTextStyle)),
            Center(child: Text('Tab 3 content', style: _tabContentTextStyle)),
          ],
        ),
        // body: Container(
        //   child: _bottomNavBarContent.elementAt(_selectedIndex),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          items: _bottomNavBar,
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const CustomBottomSheet(result: '25.000.000.000');
              },
            );
          },
          child: const Icon(Icons.thumb_up),
        ),
      ),
    );
  }
}
