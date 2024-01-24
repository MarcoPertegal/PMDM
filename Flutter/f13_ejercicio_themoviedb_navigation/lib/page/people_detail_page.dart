import 'package:f13_ejercicio_themoviedb_navigation/widget/people_detail_widget.dart';
import 'package:flutter/material.dart';

class PeopleDetailPage extends StatelessWidget {
  const PeopleDetailPage({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PeopleDetailWidget(id: id),
    );
  }
}
