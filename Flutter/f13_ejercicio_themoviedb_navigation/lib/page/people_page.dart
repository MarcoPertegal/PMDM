import 'package:f13_ejercicio_themoviedb_navigation/widget/people_list_widget/people_list_widget.dart';
import 'package:flutter/material.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 300,
          width: double.infinity,
          child: PeopleListWidget(),
        ),
      ],
    );
  }
}
