import 'package:beetourist_app/anasayfa.dart';
import 'package:beetourist_app/signup_page.dart';
import 'package:beetourist_app/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/gestures.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "img/plane2_blur.jpg"    //ARKAPLAN
                ),
                fit: BoxFit.cover
            )
        ),
        /* decoration: BoxDecoration(
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
                height: h * 0.15,
                /*decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "img/beeworld.png" //Login Ekrani üstteki fotograf
                        ),
                        fit: BoxFit.cover
                    )
                ),*/
              ),
              const Text(
                "Hoşgeldiniz!",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
              const Text(
                "Giriş yapın ve Dünya'yı keşfetmeye başlayın.",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  width: w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      SizedBox(height: 80,), //Hoşgeldiniz Email arasındaki boşluk
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
                              prefixIcon: Icon(
                                  Icons.email, color: Colors.deepOrangeAccent),
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
                      SizedBox(height: 20,), //email parola arasındaki boşluk
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
                      Row(
                        children: [
                          Expanded(child: Container(),),
                          Text(
                            "Parolamı Unuttum!",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
              ),
              SizedBox(height: 20,),
              Container(
                width: w * 0.5,
                height: h * 0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage(
                            "img/button_blur2.png" //Giris Yap tuşunun arkaplanı
                        ),
                        fit: BoxFit.cover
                    )
                ),
                child: Center(
                  child: Text(
                    "Giris Yap",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: w*0.05),
              RichText(text: TextSpan(
                  text: "Hesabınız yok mu?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                  children: [
                    TextSpan(
                        text: " Hesap Oluştur",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                        recognizer: TapGestureRecognizer()..onTap=()=>
                            Get.to(()=>SignUpPage()) //SignUpPage yönlendiren kod.
                    )
                  ]
              )
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
