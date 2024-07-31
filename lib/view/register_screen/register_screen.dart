import 'package:flutter/material.dart';
import 'package:smart_card/utils/color_constants.dart';
import 'package:smart_card/utils/text_constants.dart';
import 'package:smart_card/view/home_screen/home_screen.dart';
import 'package:smart_card/view/login_screen/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: Column(
        //     children: [
        //       Image.asset(
        //         "asset/images/Artboard.png",
        //         fit: BoxFit.contain,
        //         height: 80,
        //       ),
        //     ],
        //   ),
        //   centerTitle: true,
        //   bottom: PreferredSize(
        //       preferredSize: Size.fromHeight(30),
        //       child: SizedBox(
        //         height: 30,
        //       )),
        //   shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.only(
        //           bottomLeft: Radius.circular(0),
        //           bottomRight: Radius.circular(0))),
        // ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("asset/images/background-image.jpg"),
                fit: BoxFit.cover),
            // gradient: LinearGradient(
            //   begin: Alignment.topRight,
            //   end: Alignment.bottomLeft,
            //   stops: [0.1, 0.6, 0.7, 0.8],
            //   colors: [
            //     Colors.black,
            //     Colors.red,
            //     const Color.fromARGB(255, 62, 61, 61),
            //     const Color.fromARGB(255, 129, 40, 33),
            //   ],
            // ),
          ),
          height: MediaQuery.sizeOf(context).height,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(255, 29, 28, 28),
                            blurRadius: 3)
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: const Color.fromARGB(255, 232, 230, 230),
                    ),
                    // ignore: sort_child_properties_last
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "asset/images/Artboard.png",
                          scale: 9,
                        ),
                        // Text(
                        //   "REGISTER",
                        //   style: TextStyle(
                        //       decoration: TextDecoration.underline,
                        //       decorationColor: Colors.red,
                        //       decorationStyle: TextDecorationStyle.solid,

                        //       decorationThickness: 5,
                        //       fontWeight: FontWeight.bold,
                        //       fontSize: 20),
                        // ),
                      ],
                    ),
                    width: MediaQuery.sizeOf(context).width,
                    // height: MediaQuery.sizeOf(context).height / 6,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    //height: MediaQuery.sizeOf(context).height / 1.3,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: const Color.fromARGB(255, 29, 28, 28),
                              blurRadius: 3)
                        ],
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 232, 230, 230)),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Image.asset(
                                "asset/images/person (2).png",
                                scale: 15,
                              ),
                              hintText: "First name",
                              //hintStyle: TextStyle(fontSize: 15)
                              //labelText: "First Name"
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Image.asset(
                                "asset/images/person (2).png",
                                scale: 15,
                              ),
                              hintText: "Last name",
                              //hintStyle: TextStyle(fontSize: 15)
                              // labelText: "Last Name"
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              prefixIcon: Image.asset(
                                "asset/images/call.png",
                                scale: 15,
                              ),
                              hintText: "+91 Phone number",
                              // hintStyle: TextStyle(fontSize: 15)
                              //labelText: "+91  Phone Number"
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Image.asset(
                                "asset/images/email.png",
                                scale: 15,
                              ),
                              hintText: "Email ID",
                              // hintStyle: TextStyle(fontSize: 15)
                              //labelText: "Email"
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Image.asset(
                                "asset/images/padlock (2).png",
                                scale: 15,
                              ),
                              suffixIcon: Image.asset(
                                "asset/images/eye-password.png",
                                scale: 19,
                              ),
                              hintText: "Password",
                              // hintStyle: TextStyle(fontSize: 10)
                              //labelText: "Password"
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                                elevation: WidgetStatePropertyAll(5),
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.red)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ));
                            },
                            child: Text(
                              "REGISTER",
                              style: MytextStyle.buttonStyle,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(),
                              ),
                              // SizedBox(
                              //   width: 7,
                              // ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LoginScreen(),
                                        ));
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: ColorConstants.customRed),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
