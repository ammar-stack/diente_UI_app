import 'package:diente/homescreen.dart';
import 'package:diente/patientscreen.dart';
import 'package:diente/studentscreen.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  final List<Widget> pages = [
    HomeScreen(),
    PatientScreen(),
    StudentsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (value){
          setState(() {
            currentPage = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
          backgroundColor: const Color(0XFF7CA0CA),
          iconSize: 40.0,
          items:const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                ),
                label: 'Patients'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                ),
                label: 'Students')
          ]),
    );
  }
}
