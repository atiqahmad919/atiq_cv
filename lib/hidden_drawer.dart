import 'package:atiq_cv/screens/About_Me.dart';
import 'package:atiq_cv/screens/Contact.dart';
import 'package:atiq_cv/screens/Education.dart';
import 'package:atiq_cv/screens/Experience.dart';
import 'package:atiq_cv/screens/Portfolio.dart';
import 'package:atiq_cv/screens/Skills.dart';
import 'package:atiq_cv/screens/Testimonials.dart';
import 'package:atiq_cv/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            colorLineSelected: Colors.white,
            name: 'About Me',
            baseStyle: style2,
            selectedStyle: style3,
          ),
          AboutScreen()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            colorLineSelected: Colors.white,
            name: 'Experience',
            baseStyle: style2,
            selectedStyle: style3,
          ),
          ExperienceScreen()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            colorLineSelected: Colors.white,
            name: 'Education',
            baseStyle: style2,
            selectedStyle: style3,
          ),
          EducationScreen()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            colorLineSelected: Colors.white,
            name: 'Skills',
            baseStyle: style2,
            selectedStyle: style3,
          ),
          SkillsScreen()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            colorLineSelected: Colors.white,
            name: 'Portfolio',
            baseStyle: style2,
            selectedStyle: style3,
          ),
          PortfolioScreen()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            colorLineSelected: Colors.white,
            name: 'Testimonials',
            baseStyle: style2,
            selectedStyle: style3,
          ),
          TestimonialsScreen()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            colorLineSelected: Colors.white,
            name: 'Let\'s Connect',
            baseStyle: style2,
            selectedStyle: style3,
          ),
          ContactScreen()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: HiddenDrawerMenu(
        // elevationAppBar: 5.0,
        backgroundColorAppBar: Colors.deepPurple.shade100,
        screens: _pages,
        initPositionSelected: 0,
        backgroundColorMenu: Colors.deepPurple.shade400,
        slidePercent: 50,
      ),
    );
  }
}
