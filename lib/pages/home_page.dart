import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medicalappui/util/category_card.dart';
import 'package:medicalappui/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'nohssiw',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  //icon
                  Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.person)),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Lottie.network(
                          'https://assets8.lottiefiles.com/packages/lf20_tutvdkg0.json'),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How do you feel?',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Fill out your medical card right now',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How can we help you?',
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 25.0,
            ),

            //horizontal listview
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    categoryName: 'Dentist',
                    iconImagePath: 'assets/icons/tooth.png',
                  ),
                  CategoryCard(
                    categoryName: 'Surgeon',
                    iconImagePath: 'assets/icons/surgeon.png',
                  ),
                  CategoryCard(
                    categoryName: 'Pharmacist',
                    iconImagePath: 'assets/icons/drugs.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            //doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor list',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 25.0,
            ),

            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorCard(
                    doctorImagePath: 'assets/images/doctor1.jpeg',
                    doctorName: 'DR.Haha Gupta',
                    doctorRating: '4.9',
                    doctorProfession: 'Therapist 7 y.e',
                  ),
                  DoctorCard(
                    doctorImagePath: 'assets/images/doctor2.jpeg',
                    doctorName: 'DR.Hehe Gupta',
                    doctorRating: '4.9',
                    doctorProfession: 'Therapist 7 y.e',
                  ),
                  DoctorCard(
                    doctorImagePath: 'assets/images/doctor3.jpeg',
                    doctorName: 'DR.Hihi Gupta',
                    doctorRating: '4.9',
                    doctorProfession: 'Therapist 7 y.e',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
