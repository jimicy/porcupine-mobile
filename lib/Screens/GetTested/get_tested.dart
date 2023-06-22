// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
import 'package:flutter/material.dart';

import '../../constants.dart';

enum ExerciseFilter { free, confidential }

Map<ExerciseFilter, String> exerciseFilterNames = {
  ExerciseFilter.free: 'Free or low cost',
  ExerciseFilter.confidential: 'Mail-only Self-Testing',
};

class GetTested extends StatefulWidget {
  const GetTested({super.key});

  @override
  State<GetTested> createState() => _GetTestedState();
}

class _GetTestedState extends State<GetTested> {
  Set<ExerciseFilter> filters = <ExerciseFilter>{};

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
                            fontSize: 16, fontWeight: FontWeight.bold))),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: TextFormField(
                        cursorColor: kPrimaryColor,
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(),
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
                      icon: const Icon(Icons.filter_alt, size: 18),
                      label: const Text("Filters"),
                      onPressed: () {},
                    ),
                  ],
                ),
                Wrap(
                  spacing: 5.0,
                  children:
                      ExerciseFilter.values.map((ExerciseFilter exercise) {
                    return FilterChip(
                      label: Text(exerciseFilterNames[exercise] ?? ''),
                      selected: filters.contains(exercise),
                      onSelected: (bool selected) {
                        setState(() {
                          if (selected) {
                            filters.add(exercise);
                          } else {
                            filters.remove(exercise);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            )),
      ),
      Flexible(
          child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            leading: ExcludeSemantics(
              child: CircleAvatar(child: Text('$index')),
            ),
            title: const Text(
              'List item',
            ),
            subtitle: const Text("Subtitle"),
          );
        },
      )),
    ]);
  }
}
