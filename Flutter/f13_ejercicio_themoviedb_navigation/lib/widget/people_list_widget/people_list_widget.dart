import 'package:f13_ejercicio_themoviedb_navigation/model/poeple_list_response/poeple_list_response.dart';
import 'package:f13_ejercicio_themoviedb_navigation/widget/people_list_widget/people_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<PoepleListResponse> fetchPeople() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/person/popular?api_key=18c6dd9c77bfcc97e862001655abfba9'));
  if (response.statusCode == 200) {
    final toReturn = PoepleListResponse.fromJson(response.body);
    return toReturn;
  } else {
    throw Exception('Failed to load album');
  }
}

class PeopleListWidget extends StatefulWidget {
  const PeopleListWidget({super.key});

  @override
  State<PeopleListWidget> createState() => _PeopleListWidgetState();
}

class _PeopleListWidgetState extends State<PeopleListWidget> {
  late Future<PoepleListResponse> peopleList;

  @override
  void initState() {
    super.initState();
    peopleList = fetchPeople();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: FutureBuilder<PoepleListResponse>(
        future: peopleList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.results!.length,
                itemBuilder: (context, index) {
                  return PeopleItem(
                    people: snapshot.data!.results![index],
                  );
                });
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
