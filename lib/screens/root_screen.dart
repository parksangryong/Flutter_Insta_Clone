import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_clone/screens/home_screen.dart';
import 'package:insta_clone/screens/my_screen.dart';
import 'package:insta_clone/screens/plus_screen.dart';
import 'package:insta_clone/screens/search_screen.dart';
import 'package:insta_clone/screens/video_screen.dart';

import '../constants/font.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() {
    return _RootScreen();
  }
}

class _RootScreen extends State<RootScreen> with TickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 5, vsync: this);
    controller!.addListener(tabListener);
  }

  tabListener() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    controller!.removeListener(tabListener);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("InstaGram", style: GoogleFonts.lobsterTwo(textStyle: lHeaderText)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/heart');
              },
              icon: const FaIcon(FontAwesomeIcons.heart)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/dm');
              },
              icon: const FaIcon(FontAwesomeIcons.paperPlane)),
        ],
      ),
      body: TabBarView(
        controller: controller,
        children:  [
          HomeScreen(circleNumber: 20,boardNumber: 10,),
          const SearchScreen(),
          const PlusScreen(),
          const VideoScreen(),
          const MyScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: false,
        currentIndex: controller!.index,
        onTap: (int index) {
          controller!.animateTo(index);
        },
        showSelectedLabels: false,
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        selectedFontSize: 18,
        unselectedFontSize: 18,
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house), label: "Home"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.magnifyingGlass), label: "Search"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.squarePlus), label: "Plus"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.video), label: "Video"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.circleUser), label: "MyPage"),
        ],
      ),
    );
  }
}
