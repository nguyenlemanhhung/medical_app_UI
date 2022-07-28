// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String doctorName;
  final String doctorProfession;
  final String doctorRating;

  DoctorCard({
    required this.doctorImagePath,
    required this.doctorRating,
    required this.doctorName,
    required this.doctorProfession,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                doctorImagePath,
                height: 100,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[600],
                  ),
                  Text(
                    doctorRating,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              doctorName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              doctorProfession,
              // style: TextStyle(
              //   fontSize: 18,
              //   fontWeight: FontWeight.bold,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
