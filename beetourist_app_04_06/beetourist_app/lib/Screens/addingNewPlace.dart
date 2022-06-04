import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:beetourist_app/Screens/place.dart';
import 'package:beetourist_app/Screens/placeDetailPage.dart';
import 'package:beetourist_app/Screens/optionsPage.dart';
import 'package:beetourist_app/Screens/mainPage.dart';

/// Adding New Place Screen
class AddingNewPlace extends StatefulWidget {
  const AddingNewPlace({Key? key}) : super(key: key);

  @override
  _AddingNewPlaceState createState() => _AddingNewPlaceState();
}

class _AddingNewPlaceState extends State<AddingNewPlace> {
  String pictureUrlLink = '';

  TextEditingController idCtr = TextEditingController();
  TextEditingController titleCtr = TextEditingController();
  TextEditingController genreCtr = TextEditingController();
  TextEditingController shortDescriptionCtr = TextEditingController();
  TextEditingController imageUrlCtr = TextEditingController();

  FocusNode imageFocusNode = FocusNode();

  GlobalKey<FormState> textFieldsKey = GlobalKey<FormState>();

  @override
  void initState() {
    imageFocusNode.addListener(() {
    });
    super.initState();
  }

  @override
  void dispose() {
    imageFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Yeni Yer',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              if (textFieldsKey.currentState!.validate()) {
                print('OK');
                Place newPlace = Place(
                  id: idCtr.text,
                  title: titleCtr.text,
                  genre: genreCtr.text,
                  shortDescription: shortDescriptionCtr.text,
                  thumbnailUrl: imageUrlCtr.text,
                );
                Provider.of<Places>(context, listen: false)
                    .addingNewPlaceMethod(newPlace);
                Navigator.pop(context);
              }
            },
            icon: const Icon(
              Icons.save,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: textFieldsKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: idCtr,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Lütfen bir ID girin...';
                    }
                  },
                  style: const TextStyle(fontSize: 20),
                  decoration: const InputDecoration(
                    labelText: 'ID',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: titleCtr,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Lütfen eklemek istediğiniz yerin adını girin';
                    }
                  },
                  style: const TextStyle(fontSize: 20),
                  decoration: const InputDecoration(
                    labelText: 'Başlık',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: genreCtr,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Lütfen bir tür girin...';
                    }
                  },
                  style: const TextStyle(fontSize: 20),
                  decoration: const InputDecoration(
                    labelText: 'Tür',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  maxLines: 2,
                  controller: shortDescriptionCtr,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Lütfen bir açıklama girin';
                    }
                  },
                  style: const TextStyle(fontSize: 20),
                  decoration: const InputDecoration(
                    labelText: 'Kısa açıklama',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                      ),
                      child: pictureUrlLink == ''
                          ? const Text('Lütfen Url girin...')
                          : Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              pictureUrlLink,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: size.width - 124,
                      child: Focus(
                        onFocusChange: (hasFocus) {
                          if (!hasFocus) {
                            print('It is working...');
                            setState(() {
                              pictureUrlLink = imageUrlCtr.text;
                            });
                          }
                        },
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Lütfen geçerli fotoğraf URL si girin... ';
                            }
                          },
                          focusNode: imageFocusNode,
                          controller: imageUrlCtr,
                          decoration: const InputDecoration(
                            labelText: 'Fotoğraf URL',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
