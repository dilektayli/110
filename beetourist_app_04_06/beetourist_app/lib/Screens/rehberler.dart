//Bu sayfa Mehmet Kaan Tokay tarafından oluşturulmuştur.

import 'package:beetourist_app/model/user_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User {
  final String username;
  final String sehir;
  final String urlAvatar;

  const User({
    required this.username,
    required this.sehir,
    required this.urlAvatar,
  });
}

class RehberPage extends StatefulWidget {
  const RehberPage({Key? key}) : super(key: key);

  @override
  State<RehberPage> createState() => _RehberPageState();
}

class _RehberPageState extends State<RehberPage> {
  List<User> users = [
    const User(
      username: "Ali Atabak",
      sehir: "Ulubat Gölü \nali.atabak@gmail.com",
      urlAvatar: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",

    ),
    const User(
      username: "Oya İpatla",
      sehir: "Alaçatı \noya.ipatla@gmail.com",
      urlAvatar: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",

    ),
    const User(
      username: "Ayşe Toputut",
      sehir: "Likya \nayse.toputut@gmail.com",
      urlAvatar: "https://images.unsplash.com/photo-1548142813-c348350df52b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=389&q=80",

    ),
    const User(
      username: "Cemil Bayrakas",
      sehir: "Konya \ncemil.bayrakas@gmail.com",
      urlAvatar: "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.orange,
      title: const Text("Rehber Listesi"),
      centerTitle: true,
    ),
    body: ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];

        return Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(user.urlAvatar),
            ),
            title: Text(user.username),
            subtitle: Text(user.sehir),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserPage(user: user),
                ));
              },
            ),
          );
        },
    ),
  );
}
