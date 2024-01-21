import 'package:f12_ejercicio_parking/model/parking_list_response/parking_list_response.dart';
import 'package:f12_ejercicio_parking/page/parking_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<ParkingListResponse> fetchParking() async {
  final response = await http.get(Uri.parse(
      'https://valencia.opendatasoft.com/api/explore/v2.1/catalog/datasets/parkings/records?limit=20'));
  if (response.statusCode == 200) {
    final toReturn = ParkingListResponse.fromJson(response.body);
    return toReturn;
  } else {
    throw Exception('Failed to load album');
  }
}

class ParkingListWidget extends StatefulWidget {
  const ParkingListWidget({super.key});

  @override
  State<ParkingListWidget> createState() => _ParkingListWidgetState();
}

class _ParkingListWidgetState extends State<ParkingListWidget> {
  late Future<ParkingListResponse> parkingList;
  @override
  void initState() {
    super.initState();
    parkingList = fetchParking();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: FutureBuilder<ParkingListResponse>(
        future: parkingList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ParkingPage(parkingList: snapshot.data!.results!);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
