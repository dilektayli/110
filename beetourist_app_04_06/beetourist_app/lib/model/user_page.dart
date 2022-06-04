//Bu sayfa Mehmet Kaan Tokay tarafından oluşturulmuştur.

import 'package:beetourist_app/main.dart';
import 'package:beetourist_app/Screens/rehberler.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final User user;

  const UserPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.orange,
      title: Text(user.username),
    ),
    body: Center(
      child: Column(
        children: <Widget>[
          Image.network(
            user.urlAvatar,
            height: 400,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),
          Text(
            user.username,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Merhaba! Size rehberlik yapabilirim.",
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    ),
  );
}
