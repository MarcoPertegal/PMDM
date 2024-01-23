import 'package:f13_ejercicio_themoviedb_navigation/model/people_detail_response.dart';
import 'package:flutter/material.dart';

class PeopleDetailItem extends StatelessWidget {
  const PeopleDetailItem({super.key, required this.peopleDetail});
  final PeopleDetailResponse peopleDetail;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(peopleDetail.name!),
          Image.network(
            'https://media.themoviedb.org/t/p/w300_and_h450_bestv2${peopleDetail.profilePath}',
            width: 250,
            height: 225,
            fit: BoxFit.contain,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(peopleDetail.gender.toString(),
                      style: const TextStyle(fontSize: 24)),
                  Text(peopleDetail.popularity.toString(),
                      style: const TextStyle(fontSize: 24)),
                  Text('${peopleDetail.birthday}')
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
