import 'package:flutter/material.dart';
import 'package:project/Screens/places.dart';
import 'package:provider/provider.dart';

/// Place Detail Screen
class PlaceDetail extends StatefulWidget {
  int index;

  PlaceDetail({required this.index});

  @override
  _PlaceDetailState createState() => _PlaceDetailState();
}

class _PlaceDetailState extends State<PlaceDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(
          Provider.of<Places>(context, listen: false)._items[widget.index].title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              Provider.of<Places>(context, listen: false)
                  .currentList()[widget.index]
                  .thumbnailUrl,
              width: size.width,
              height: (size.height / 2),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                Provider.of<Places>(context, listen: false)
                    .currentList()[widget.index]
                    .genre,
                style: const TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                Provider.of<Places>(context, listen: false)
                    .currentList()[widget.index]
                    .shortDescription,
                style: const TextStyle(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}