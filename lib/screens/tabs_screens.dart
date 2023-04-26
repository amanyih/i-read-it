import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_read_it/screens/widgets/right_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int curIndex = 0;

  void changeTab(value) {
    setState(() {
      curIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      endDrawer: RightDrawer(),
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.search)),
          Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Icon(Icons.person)))
        ],
      ),
      body: null,
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 20,
          selectedFontSize: 11,
          unselectedFontSize: 11,
          currentIndex: curIndex,
          onTap: changeTab,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.house), label: "Home"),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.compass,
                ),
                label: "Discover"),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.plus), label: "Create"),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.message), label: "Chat"),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.bell), label: "Inbox"),
          ]),
    );
  }
}
