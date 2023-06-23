// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
import 'package:flutter/material.dart';
import 'package:porcupine_app/Screens/GetTested/health_care_provider.dart';
import 'package:porcupine_app/home_page.dart';

import '../../constants.dart';

enum ClincFilter { free, confidential, transit }

Map<ClincFilter, String> ClincFilterNames = {
  ClincFilter.free: 'Free or low cost',
  ClincFilter.confidential: 'Mail-only Self-Testing',
  ClincFilter.transit: 'Public Transit friendly',
};

Map<ClincFilter, Color> chipToColor = {
  ClincFilter.free: const Color.fromRGBO(255, 184, 184, 1),
  ClincFilter.confidential: const Color.fromRGBO(218, 230, 142, 1),
  ClincFilter.transit: const Color.fromRGBO(181, 215, 239, 1),
};

Map<ClincFilter, Color> chipToSelectedColor = {
  ClincFilter.free: Color.fromRGBO(255, 96, 96, 1),
  ClincFilter.confidential: const Color.fromRGBO(198, 217, 81, 1),
  ClincFilter.transit: const Color.fromRGBO(112, 178, 224, 1),
};

class GetTested extends StatefulWidget {
  const GetTested({super.key});

  @override
  State<GetTested> createState() => _GetTestedState();
}

class _GetTestedState extends State<GetTested> {
  Set<ClincFilter> filters = <ClincFilter>{};

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 160,
        color: const Color.fromRGBO(252, 252, 252, 1),
        child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    child: Text("Find Nearby Provider",
                        style: TextStyle(
                            color: Color.fromRGBO(131, 116, 165, 1),
                            fontSize: 16, fontWeight: FontWeight.bold))),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: TextFormField(
                        cursorColor: kPrimaryColor,
                        decoration: InputDecoration(
                          isDense: true,
                          border: const OutlineInputBorder(),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Zip Code",
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(40, 48),
                        backgroundColor: Color.fromRGBO(131, 116, 165, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                      icon: const Icon(Icons.filter_alt, size: 18),
                      label: const Text("Filters"),
                      onPressed: () {},
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Wrap(
                      spacing: 5.0,
                      children: ClincFilter.values.map((ClincFilter filter) {
                        return FilterChip(
                          label: Text(ClincFilterNames[filter] ?? ''),
                          backgroundColor: chipToColor[filter],
                          selectedColor: chipToSelectedColor[filter],
                          selected: filters.contains(filter),
                          onSelected: (bool selected) {
                            setState(() {
                              if (selected) {
                                filters.add(filter);
                              } else {
                                filters.remove(filter);
                              }
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ]),
                ),
              ],
            )),
      ),
      Flexible(
          child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shadowColor: Colors.blue,
                color: Color.fromRGBO(201, 224, 240, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const BottomNavigationBarExampleApp(
                            firstTab: HealthCareProvider(),
                          );
                        },
                      ),
                    );
                  },
                  child: const SizedBox(
                    height: 140,
                    width: 350,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Radiant Health Centers",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("17982 Sky Park Circle, Suite J"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Irvine, California 92614"),
                          ),
                          const SizedBox(height: 20),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(width: 15),
                                    Icon(Icons.phone),
                                    const SizedBox(width: 10),
                                    Text("714-454-6955"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 10,
                                    ),
                                    const SizedBox(width: 5),
                                    CircleAvatar(
                                      radius: 10,
                                    ),
                                    const SizedBox(width: 5),
                                    CircleAvatar(
                                      radius: 10,
                                    ),
                                    const SizedBox(width: 15),
                                  ],
                                ),
                              ])
                        ],
                      ),
                    ),
                  ),
                ),
              )
          );
        },
      )),
    ]);
  }
}
