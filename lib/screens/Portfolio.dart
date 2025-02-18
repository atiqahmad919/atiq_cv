import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'Test.dart';

class PortfolioScreen extends StatelessWidget {
  final List<PortfolioProject> projects = [
    PortfolioProject(
      title: 'Pashto Quotes App',
      description:
          'A comprehensive app with 800+ quotes from Pashto language stored in local SQLite database where users can favorite, copy and share quotes on different social platforms.',
      imagePaths: [
        'images/Matale_1.png',
        'images/Matale_2.png',
        'images/Matale_3.png',
        'images/Matale_4.png'
      ],
    ),
    PortfolioProject(
      title: 'Fast Delivery Service',
      description:
          'A local delivery service in Mingora, Swat, Pakistan. Just order from the comfort of your home and FDS will deliver your food and daily use items to your doorstep.',
      imagePaths: [
        'images/FDS_1.png',
        'images/FDS_2.png',
        'images/FDS_3.png',
        'images/FDS_4.png'
      ],
    ),
    PortfolioProject(
      title: 'Quotes App',
      description:
          'Getting motivated daily with hundreds of quotes integrated via Firebase API. Users can Favorite, copy and share it on different social platforms.',
      imagePaths: [
        'images/Liboq_1.png',
        'images/Liboq_2.png',
        'images/Liboq_3.png',
        'images/Liboq_4.png'
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTertiaryColor,
      // appBar: AppBar(title: Text('Portfolio')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return PortfolioCard(project: projects[index]);
        },
      ),
    );
  }
}

class PortfolioCard extends StatelessWidget {
  final PortfolioProject project;

  PortfolioCard({required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
            child: Text(
              project.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16),
            child: Text(project.description),
          ),
          ImageCarousel(
            imagePaths: project.imagePaths,
          ),
        ],
      ),
    );
  }
}

class PortfolioProject {
  final String title;
  final String description;
  final List<String> imagePaths;

  PortfolioProject(
      {required this.title,
      required this.description,
      required this.imagePaths});
}
