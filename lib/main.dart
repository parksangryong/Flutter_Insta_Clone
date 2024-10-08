import 'package:flutter/material.dart';
import 'package:insta_clone/screens/dm_screen.dart';
import 'package:insta_clone/screens/heart_screen.dart';
import 'package:insta_clone/screens/root_screen.dart';
import 'package:insta_clone/screens/story_screen.dart';

void main() {
  runApp(MaterialApp(
    themeMode: ThemeMode.dark,
    darkTheme: ThemeData.dark(),
    initialRoute: "/",
    routes: {
      '/' : (context) => RootScreen(),
      '/dm' : (context) => DmScreen(),
      '/heart' : (context) => HeartScreen(),
      '/story' : (context) => StoryScreen()
    },
  ));
}
