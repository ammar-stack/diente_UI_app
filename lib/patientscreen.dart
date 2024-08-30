import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientScreen extends StatefulWidget {
  const PatientScreen({super.key});

  @override
  State<PatientScreen> createState() => _PatientScreenState();
}

class _PatientScreenState extends State<PatientScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> imageLinks = [
      'assets/person_1.jpg',
      'assets/person_2.jpg',
      'assets/person_3.jpg',
      'assets/person_4.jpg'
    ];
    List<String> patientsName = [
      'Patient 1',
      'Patient 2',
      'Patient 3',
      'Patient 4'
    ];
    void showPatientDialog(BuildContext context , int id , [String? age = '']) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          height: 350,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(imageLinks[id]) // Replace with your image URL
              ),
              SizedBox(height: 20),
              Text(
                patientsName[id],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(age.toString()),
              SizedBox(height: 5),
              Text(
                'Routine examination',
                style: TextStyle(color: Colors.grey),
              ),
              Spacer(),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle reject action
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                      backgroundColor: Colors.red, // Background color
                    ),
                    child: Icon(Icons.close, color: Colors.white, size: 30),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle accept action
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                      backgroundColor: Colors.green, // Background color
                    ),
                    child: Icon(Icons.check, color: Colors.white, size: 30),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}


    Widget patientStates(int id, String sub, double space,BuildContext context) {
      return InkWell(
        onTap: () {
          showPatientDialog(context , id);
        },
        child: Container(
            height: 110,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              color: Colors.grey.shade200,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            image: DecorationImage(
                                image: AssetImage(imageLinks[id]))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Text(
                              patientsName[id],
                              style: GoogleFonts.ubuntu(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              sub,
                              style: GoogleFonts.ubuntu(
                                  fontSize: 15, color: Color(0XFF7CA0CA)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: space),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios)),
                      )
                    ],
                  ),
                )
              ],
            )),
      );
    }

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
                child: Text("Here are new cases",
                    style: GoogleFonts.rubik(fontSize: 18)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: patientStates(0, 'Routine Examination', 55,context),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: patientStates(1, 'Case Information', 80,context),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: patientStates(2, 'Case Information', 80, context),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: patientStates(3, 'Case Information', 80, context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
