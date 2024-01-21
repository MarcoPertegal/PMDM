import 'package:f12_ejercicio_parking/model/parking_list_response/result.dart';
import 'package:f12_ejercicio_parking/widget/parking_card.dart';
import 'package:flutter/material.dart';

class ParkingPage extends StatefulWidget {
  const ParkingPage({super.key, required this.parkingList});
  final List<Result> parkingList;
  @override
  State<ParkingPage> createState() => _ParkingPageState();
}

class _ParkingPageState extends State<ParkingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Parking'),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: widget.parkingList.length,
              itemBuilder: (context, index) {
                return ParkingCard(parking: widget.parkingList[index]);
              }),
        ));
  }
}
