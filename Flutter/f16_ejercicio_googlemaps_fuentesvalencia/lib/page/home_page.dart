import 'package:chopper/chopper.dart';
import 'package:f16_ejercicio_googlemaps_fuentesvalencia/model/fonts_response/fonts_response.dart';
import 'package:f16_ejercicio_googlemaps_fuentesvalencia/model/fonts_response/geo_point2d.dart';
import 'package:f16_ejercicio_googlemaps_fuentesvalencia/model/fonts_response/result.dart';
import 'package:f16_ejercicio_googlemaps_fuentesvalencia/service/font_service.dart';
import 'package:f16_ejercicio_googlemaps_fuentesvalencia/widget/place_marker_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Response response;
  List<Result> fonts = [];
  List<GeoPoint2d> list = [];

  @override
  void initState() {
    super.initState();
    Provider.of<FontService>(context, listen: false)
        .fetchValenciasFontResponse()
        .then((value) {
      setState(() {
        response = value;
        fonts = FontsResponse().fromJson(response.body!).results!;
        for (var element in fonts) {
          list.add(element.geoPoint2d!);
        }
      });
    }).onError((error, stackTrace) {
      print('mierror: ' + error.toString());
      print('mytrack: ' + stackTrace.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Valencias Fonts'),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: false,
        children: [
          const Text(
            'Where Are the Main Fonts in Valencia?',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          list.isEmpty
              ? const CircularProgressIndicator()
              : PlaceMarkerItem(markersPointer: list)
        ],
      ),
    );
  }
}
