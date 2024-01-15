import 'package:ejercicio_05_horizontallist/widget/actor_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Home Page';

    return MaterialApp(
      title: title,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 196, 196, 196),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 196, 196, 196),
          title: const Text(title),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          height: 200,
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  ActorItem(
                    img:
                        'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wrPmsC9YATcnyAxvXEdGshccbqU.jpg',
                    name: 'Juan',
                    surname: 'Pérez',
                  ),
                  ActorItem(
                    img:
                        'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wrPmsC9YATcnyAxvXEdGshccbqU.jpg',
                    name: 'Alberto',
                    surname: 'Rodriguez',
                  ),
                  ActorItem(
                    img:
                        'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wrPmsC9YATcnyAxvXEdGshccbqU.jpg',
                    name: 'Juan',
                    surname: 'Pérez',
                  ),
                  ActorItem(
                    img:
                        'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wrPmsC9YATcnyAxvXEdGshccbqU.jpg',
                    name: 'Juan',
                    surname: 'Pérez',
                  ),
                  ActorItem(
                    img:
                        'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wrPmsC9YATcnyAxvXEdGshccbqU.jpg',
                    name: 'Juan',
                    surname: 'Pérez',
                  ),
                  ActorItem(
                    img:
                        'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wrPmsC9YATcnyAxvXEdGshccbqU.jpg',
                    name: 'Juan',
                    surname: 'Pérez',
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
