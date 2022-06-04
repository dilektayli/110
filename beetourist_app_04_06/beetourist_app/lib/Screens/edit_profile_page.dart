//Bu sayfa Mehmet Kaan Tokay tarafından oluşturulmuştur.

import 'package:beetourist_app/model/user.dart';
import 'package:beetourist_app/utils/user_preferences.dart';
import 'package:beetourist_app/widget/appbar_widget.dart';
import 'package:beetourist_app/widget/profile_widget.dart';
import 'package:beetourist_app/widget/textfield_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: buildAppBar(context),
    body: ListView(
      padding: EdgeInsets.symmetric(horizontal: 32),
      physics: BouncingScrollPhysics(),
      children: [
        ProfileWidget(
          imagePath: user.imagePath,
          isEdit: true,
          onClicked: () async {},
        ),
        const SizedBox(height: 24),
        TextFieldWidget(
          label: "İsim Soyisim",
          text: user.name,
          onChanged: (name) {},
        ),
        const SizedBox(height: 24),
        TextFieldWidget(
          label: "Email",
          text: user.email,
          onChanged: (email) {},
        ),
        const SizedBox(height: 24),
        TextFieldWidget(
          label: "Hakkında",
          text: user.about,
          maxLines: 5,
          onChanged: (about) {},
        ),
      ],
    )
  );
}
