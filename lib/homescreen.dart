import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget dashboardItems(
    String titlenew,
    int value,
  ) {
    return Container(
      height: 110,
      width: 350,
      decoration: BoxDecoration(
        borderRadius:const BorderRadius.all(Radius.circular(30)),
        color: Colors.grey.shade200,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titlenew,
              style: GoogleFonts.montserrat(
                  fontSize: 20, color: const Color(0XFF7CA0CA)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              value.toString(),
              style: GoogleFonts.montserrat(fontSize: 20, color: const Color(0XFF7CA0CA)),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      'number of students',
      'number of patients',
      'active cases',
      'waiting cases'
    ];
    List<int> amount = [40, 24, 7, 17];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Image(
                  image: AssetImage('assets/diente.png'),
                  height: 120,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child:
                    Text("Dashboard", style: GoogleFonts.rubik(fontSize: 35)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: dashboardItems(titles[0], amount[0]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: dashboardItems(titles[1], amount[1]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: dashboardItems(titles[2], amount[2]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: dashboardItems(titles[3], amount[3]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
