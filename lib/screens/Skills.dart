import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SkillsScreen extends StatelessWidget {
  final List<String> skills = [
    'Flutter Development:' '\nComplex UI implementation with animations',
    'Dart Programming:\nComplex backend logic implementation',
    'State Management Techniques: \nGetX, Provider, Bloc, Redux',
    'Firebase integration:\nAuthentication, Firestore, Cloud Functions',
    'Local Storage Techniques: \nSQLite, Hive, Shared Preference, ',
    'API integration',
    'Custom Animations',
    'UI/UX Design',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTertiaryColor,
      // appBar: AppBar(title: Text('Skills')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: skills.length,
        itemBuilder: (context, index) {
          return SkillCard(skill: skills[index]);
        },
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final String skill;

  SkillCard({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      child: ListTile(
        title: Text(skill),
      ),
    );
  }
}
