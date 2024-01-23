import 'package:f13_ejercicio_themoviedb_navigation/model/people_detail_response.dart';
import 'package:f13_ejercicio_themoviedb_navigation/widget/people_detail_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<PeopleDetailResponse> fetchPeopleDetail(int id) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/person/${id}?api_key=18c6dd9c77bfcc97e862001655abfba9'));
  if (response.statusCode == 200) {
    final toReturn = PeopleDetailResponse.fromJson(response.body);
    return toReturn;
  } else {
    throw Exception('Failed to load album');
  }
}

class PeopleDetailWidget extends StatefulWidget {
  const PeopleDetailWidget({super.key, required this.id});
  final int id;

  @override
  State<PeopleDetailWidget> createState() => _PeopleDetailWidgetState();
}

class _PeopleDetailWidgetState extends State<PeopleDetailWidget> {
  late Future<PeopleDetailResponse> peopleDetail;

  @override
  void initState() {
    super.initState();
    peopleDetail = fetchPeopleDetail(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: FutureBuilder<PeopleDetailResponse>(
        future: peopleDetail,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PeopleDetailItem(peopleDetail: snapshot.data!);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}


//https://api.themoviedb.org/3/person/10?api_key=18c6dd9c77bfcc97e862001655abfba9
