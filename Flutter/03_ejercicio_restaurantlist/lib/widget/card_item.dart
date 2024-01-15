import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItem extends StatelessWidget {
  final String img;
  final String name;
  final double rating; //0 a 5
  final String address;
  final double price;

  const CardItem(
      {super.key,
      required this.img,
      required this.name,
      required this.rating,
      required this.address,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image(image: NetworkImage(img)),
              title: Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              subtitle: Text(address, style: GoogleFonts.lato()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const SizedBox(height: 40.0),
                RatingBarIndicator(
                  rating: rating,
                  itemCount: 5,
                  itemSize: 20.0,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: Text(price.toString() + '€'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//COMO METER TIPOGRAFIAS