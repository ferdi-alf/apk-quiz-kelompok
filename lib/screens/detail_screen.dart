import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/sayuran_model.dart';

class DetailScreen extends StatelessWidget {
  final SayuranModel sayur;

  DetailScreen({required this.sayur});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sayur.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/${sayur.image}'),
            SizedBox(height: 16),
            Text(
              sayur.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              sayur.benefit,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            RichText(
                text: TextSpan(
                    text: "${sayur.vitamin.join(', ')}",
                    style: TextStyle(
                        fontSize: 15, color: const Color(0xFF4CAF50)))),
            SizedBox(
              height: 12,
            ),
            Text(
              sayur.description,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
