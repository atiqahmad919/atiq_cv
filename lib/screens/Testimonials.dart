import 'package:flutter/material.dart';

import '../utils/constants.dart';

class TestimonialsScreen extends StatelessWidget {
  final List<Testimonial> testimonials = [
    Testimonial(
      name: 'Babar Ali',
      role: 'CEO, Createch IT Solutions',
      feedback:
          'I had the pleasure of working with Atiq Ahmad on a mobile app project, and his exceptional Flutter development skills and professionalism were evident from the start. He transformed my concept into a polished, user-friendly app that exceeded my expectations. Atiq\'s clear communication, attention to detail, and expertise in UI/UX design resulted in a visually appealing and efficient app. He was responsive, flexible, and committed to delivering high-quality work on time and within budget. I highly recommend Atiq to anyone seeking a talented and reliable Flutter developer.',
      imageUrl: 'images/BabarAli.png',
    ),
    Testimonial(
      name: 'Wasim Haider',
      role: 'CEO, Fast Delivery Service',
      feedback:
          'Working with Atiq Ahmad on my mobile app project was an outstanding experience. His deep expertise in Flutter development and keen eye for design transformed my vision into a sleek, high-performing app. Atiq\'s professionalism shone through in his prompt communication, collaborative approach, and meticulous attention to detail. He consistently delivered beyond expectations, ensuring a seamless user experience and beautiful design. His commitment to quality and timely delivery made the process smooth and stress-free. I highly recommend Atiq for anyone in need of a skilled and dependable Flutter developer.',
      imageUrl: 'images/wasimHaider.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTertiaryColor,
      // appBar: AppBar(title: Text('Testimonials')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: testimonials.length,
        itemBuilder: (context, index) {
          return TestimonialCard(testimonial: testimonials[index]);
        },
      ),
    );
  }
}

class TestimonialCard extends StatelessWidget {
  final Testimonial testimonial;

  TestimonialCard({required this.testimonial});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(testimonial.imageUrl),
        ),
        title: Text(testimonial.name),
        subtitle: Text(testimonial.role),
        isThreeLine: true,
        trailing: Icon(Icons.format_quote),
        contentPadding: EdgeInsets.all(16.0),
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(testimonial.name),
                content: Text(testimonial.feedback),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Close'),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class Testimonial {
  final String name;
  final String role;
  final String feedback;
  final String imageUrl;

  Testimonial(
      {required this.name,
      required this.role,
      required this.feedback,
      required this.imageUrl});
}
