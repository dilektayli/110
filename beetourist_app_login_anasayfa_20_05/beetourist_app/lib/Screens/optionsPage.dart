import 'package:flutter/material.dart';
import 'addingNewPlace.dart';
import 'place.dart';
import 'package:provider/provider.dart';

/// Options Screen
class OptionScreen extends StatefulWidget {
  const OptionScreen({Key? key}) : super(key: key);

  @override
  _OptionScreenState createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> {
  String TypeOfPlace = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Türler',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          RadioListTile<String>(
            groupValue: TypeOfPlace,
            value: 'Yeşil',
            title: Text('Yeşil'),
            onChanged: (value) {
              setState(() {
                TypeOfPlace = value!;
              });
            },
          ),
          RadioListTile<String>(
            groupValue: TypeOfPlace,
            value: 'Şehir',
            title: Text('Şehir'),
            onChanged: (value) {
              setState(() {
                TypeOfPlace = value!;
              });
            },
          ),
          RadioListTile<String>(
            groupValue: TypeOfPlace,
            value: 'Göl',
            title: Text('Göl'),
            onChanged: (value) {
              setState(() {
                TypeOfPlace = value!;
              });
            },
          ),
          RadioListTile<String>(
            groupValue: TypeOfPlace,
            value: 'Deniz',
            title: Text('Deniz'),
            onChanged: (value) {
              setState(() {
                TypeOfPlace = value!;
              });
            },
          ),
          RadioListTile<String>(
            groupValue: TypeOfPlace,
            value: 'Tarihi',
            title: Text('Tarihi'),
            onChanged: (value) {
              setState(() {
                TypeOfPlace = value!;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<Places>(context, listen: false)
                  .changeTypeOfPlaceInMain(TypeOfPlace);
              print(TypeOfPlace);
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
            ),
            child: const Text(
              'OK',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}