import 'package:beetourist_app/Screens/profile.dart';
import 'package:beetourist_app/Screens/rehberler.dart';
import 'package:flutter/material.dart';
import 'addingNewPlace.dart';
import 'optionsPage.dart';
import 'placeDetailPage.dart';
import 'place.dart';
import 'package:provider/provider.dart';

/// Main Screen
class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              height: 70,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange ,
                ),
                child: Text(
                  'Merhaba!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage())).then((value) => setState(() {
                      Navigator.of(context).pop();
                }));
              },
              leading: const Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
              title: const Text(
                'Profilim',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
            ),

            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddingNewPlace())).then((value) => setState(() {
                  Navigator.of(context).pop();
                }));
              },
              leading: const Icon(
                Icons.edit,
                color: Colors.black,
              ),
              title: const Text(
                'Yeni yer ekle',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
            ),

            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RehberPage()))  //yönlendirme sayfası
                    .then((value) => setState(() {
                  Navigator.of(context).pop();
                }));
              },
              leading: const Icon(
                Icons.assignment_ind, //icon
                color: Colors.black,    //icon rengi
              ),
              title: const Text(
                'Rehberler',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
            ),


            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OptionScreen())).then((value) => setState(() {
                  Navigator.of(context).pop();
                }));
              },
              leading: const Icon(
                Icons.miscellaneous_services,
                color: Colors.black,
              ),
              title: const Text(
                'Ayarlar',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
            ),
/*
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RehberPage())).then((value) => setState(() {
                  Navigator.of(context).pop();
                }));
              },
              leading: const Icon(
                Icons.miscellaneous_services,
                color: Colors.black,
              ),
              title: const Text(
                'BOŞ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
            ),
*/
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title:const Text(
          'BeeTourist',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          PopupMenuButton<int>(
            onSelected: (val) {
              if (val == 0) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OptionScreen()))
                    .then((value) => setState(() {}));
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 0,
                child: Text('Türler'),
              ),
            ],
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
        ),
        itemCount:
        Provider.of<Places>(context, listen: false).currentList().length,
        itemBuilder: (context, index) {
          List CurrentPlaces =
          Provider.of<Places>(context, listen: false).currentList();
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlaceDetail(index: index)));
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(CurrentPlaces[index].thumbnailUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.75),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          CurrentPlaces[index].title,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}