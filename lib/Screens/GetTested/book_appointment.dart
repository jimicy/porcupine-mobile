import 'package:flutter/material.dart';
import 'package:porcupine_app/Screens/Survey/survey.dart';
import 'package:porcupine_app/home_page.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({Key? key}) : super(key: key);

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
        Text(
          "Book Date",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 10),
        Container(
          height: 90,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Card(
                      child: Container(
                        width: 100,
                        height: 70,
                        child: Center(
                          child: Text(
                            "July ${index + 1}",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),
        Text(
          "Book Time",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 10),
        Container(
          height: 90,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 11,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Card(
                      child: Container(
                        width: 100,
                        height: 70,
                        child: Center(
                          child: Text(
                            "${index + 7}:00",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),
        Text(
          "Test Type",
          style: TextStyle(fontSize: 18),
        ),
        TestTypeDropdown(),
        SizedBox(height: 10),
        Center(
          child: ElevatedButton(
            // style: style,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BottomNavigationBarExampleApp(
                      firstTab: MySurvey(),
                    );
                  },
                ),
              );
            },
            child: const Text('Confirm Appointment'),
          ),
        )
      ]),
    );
  }
}

const List<String> testTypes = <String>[
  "Chlamydia Test",
  "Conventional HIV Test",
  "Gonorrhea Test",
  "Hepatitis B Test",
  "Hepatitis C Test",
  "Herpes Test",
  "Rapid HIV Test",
  "Syphilis Test",
];

class TestTypeDropdown extends StatefulWidget {
  const TestTypeDropdown({super.key});

  @override
  State<TestTypeDropdown> createState() => _TestTypeDropdownState();
}

class _TestTypeDropdownState extends State<TestTypeDropdown> {
  String dropdownValue = testTypes.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: testTypes.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
