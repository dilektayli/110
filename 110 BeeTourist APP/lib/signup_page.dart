import 'package:beetourist/anasayfa.dart';
import 'package:beetourist/login_page.dart';
import 'package:beetourist/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/gestures.dart';
import 'login_page.dart';
import 'package:flutter/gestures.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {

    List images =  [
      "g.png",  //google image
    ];

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "img/Beach-Wallpaper_blur.jpg"    //ARKAPLAN
                ),
                fit: BoxFit.cover
            )
        ),
        /*decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: [
            Color(0xFF74f5fc),
            Color(0xFF02edfa),
            Color(0xFF0481d4),
          ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ), */
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: w,
                height: h*0.345,
                /*decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "img/beeworld.png"   //Login Ekrani üstteki fotograf
                        ),
                        fit: BoxFit.fitWidth
                    )
                ),*/
                child: Column(
                  children: [
                    SizedBox(height: h*0.11,),
                    CircleAvatar(
                      backgroundColor: Colors.white24,
                      radius: 60,
                      backgroundImage: AssetImage(
                        "img/profile.png"
                      ),
                    )
                  ]
                )
              ),
              Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  width: w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30,),  //Merhaba Email arasındaki boşluk
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.2)
                              )
                            ]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Email",
                              prefixIcon: Icon(Icons.email, color: Colors.deepOrangeAccent),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 1.0
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 1.0
                                  )
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),  //email şifre arasındaki boşluk
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.2)
                              )
                            ]
                        ),
                        child: TextField(
                          obscureText: isHiddenPassword,
                          decoration: InputDecoration(
                              hintText: "Parola",
                              prefixIcon: Icon(Icons.password_outlined, color: Colors.deepOrangeAccent),
                              suffixIcon: InkWell(
                                  onTap: _togglePasswordView,
                                  child: Icon(Icons.visibility)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 1.0
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 1.0
                                  )
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      /* Row(
                        children: [
                          Expanded(child: Container(),),
                          Text(
                            "Parolamı Unuttum!",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey[500]
                            ),
                          ),
                        ],
                      ),
                      */
                    ],
                  ),
              ),
              SizedBox(height: 10,),
              Container(
                width: w*0.5,
                height: h*0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage(
                            "img/button_blur2.png"    //Login Ekrani üstteki fotograf
                        ),
                        fit: BoxFit.cover
                    )
                ),
                child: Center(
                  child: Text(
                    "Kayıt Ol",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                  recognizer: TapGestureRecognizer()..onTap=()=> Get.back(),
                  text: "Zaten bir hesabınız var mı?",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )
                )
              ),
              SizedBox(height: w*0.03),
              RichText(text: TextSpan(
                  text: "--------------- veya ---------------",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),
              )),
              Wrap(
                children: List<Widget>.generate(
                  1,  //google signup sembolü
                    (index){
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            "img/"+images[index]
                          ),
                        ),
                      ),
                    );
                    }
                ),
              ),
              SizedBox(height: w),
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    if (isHiddenPassword == true) {
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {

    });
  }
}
