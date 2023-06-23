import 'package:flutter/material.dart';
import 'package:porcupine_app/Screens/GetTested/book_appointment.dart';
import 'package:porcupine_app/home_page.dart';

class HealthCareProvider extends StatelessWidget {
  const HealthCareProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        Text(
          "Radiant Health Centers",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text("17982 Sky Park Circle, Suite J"),
        Text("Irvine, CA 92614"),
        Row(
          children: [
            Icon(Icons.phone),
            Text("714-454-6955"),
          ],
        ),
        Divider(
          thickness: 2,
        ),
        Text("Free Service"),
        Text("• Hepatitis C Test"),
        Text("• HIV Self-Testing"),
        Text("• HIV Test"),
        Text("• STD Test"),
        Divider(
          thickness: 2,
        ),
        Text("On-site Service"),
        Text("• Chlamydia Test"),
        Text("• Conventional HIV Test"),
        Text("• Gonorrhea Test"),
        Text("• Hepatitis B Test"),
        Text("• Hepatitis C Test"),
        Text("• Herpes Test"),
        Text("• Rapid HIV Test"),
        Text("• Syphilis Test"),
        Text("Mail-only self-test kits"),
        Text("• HIV Self-Testing"),
        SizedBox(height: 50),
        Center(
          child: ElevatedButton(
            // style: style,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const BottomNavigationBarExampleApp(
                      firstTab: BookAppointment(),
                    );
                  },
                ),
              );
            },
            child: const Text('Book Appointment'),
          ),
        )
      ]),
    );
  }
}
