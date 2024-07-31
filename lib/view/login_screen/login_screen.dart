// import 'package:flutter/material.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   bool isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 206, 197, 194),
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Column(
//           children: [
//             Image.asset(
//               "asset/images/Artboard.png",
//               fit: BoxFit.contain,
//               height: 80,
//             ),
//           ],
//         ),
//         centerTitle: true,
//         bottom: PreferredSize(
//             preferredSize: Size.fromHeight(30),
//             child: SizedBox(
//               height: 30,
//             )),
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(50),
//                 bottomRight: Radius.circular(50))),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
//           child: Container(
//             // height: MediaQuery.sizeOf(context).height / 1.3,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: const Color.fromARGB(255, 232, 230, 230)),
//             child: Padding(
//               padding: const EdgeInsets.all(30),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   // Container(
//                   //   decoration: BoxDecoration(
//                   //     borderRadius: BorderRadius.only(
//                   //         bottomLeft: Radius.circular(30),
//                   //         bottomRight: Radius.circular(30)),
//                   //     color: Colors.white,
//                   //   ),
//                   //   // ignore: sort_child_properties_last
//                   //   child: Column(
//                   //     children: [
//                   //       Image.asset(
//                   //         "asset/images/Artboard.png",
//                   //         scale: 9,
//                   //       ),
//                   //       Text(
//                   //         "REGISTER",
//                   //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                   //       ),
//                   //     ],
//                   //   ),
//                   //   width: MediaQuery.sizeOf(context).width,
//                   //   height: MediaQuery.sizeOf(context).height / 5,
//                   // ),

//                   TextField(
//                     decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.email_outlined),
//                       hintText: "Email ID",
//                       // hintStyle: TextStyle(fontSize: 15)
//                       //labelText: "Email"
//                     ),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   TextField(
//                     decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.lock),
//                       suffixIcon: Icon(Icons.remove_red_eye),
//                       hintText: "Password",
//                       // hintStyle: TextStyle(fontSize: 10)
//                       //labelText: "Password"
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: [
//                       Checkbox(
//                         activeColor: Colors.grey,
//                         checkColor: Colors.red,
//                         value: isChecked,
//                         onChanged: (value) {
//                           if (value != null) {
//                             isChecked = value;
//                           }
//                           setState(() {});
//                         },
//                       ),
//                       Text("Remember me")
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Container(
//                     height: 40,
//                     width: 160,
//                     child: ElevatedButton(
//                       style: ButtonStyle(
//                           elevation: WidgetStatePropertyAll(5),
//                           backgroundColor: WidgetStatePropertyAll(Colors.red)),
//                       onPressed: () {},
//                       child: Text(
//                         "LOGIN",
//                         style: TextStyle(
//                             color: Colors.white, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextButton(onPressed: () {}, child: Text("Forgot Password?")),
//                   Container(
//                     height: 40,
//                     width: 160,
//                     child: ElevatedButton(
//                       style: ButtonStyle(
//                           elevation: WidgetStatePropertyAll(5),
//                           backgroundColor: WidgetStatePropertyAll(Colors.red)),
//                       onPressed: () {},
//                       child: Text(
//                         "REGISTER",
//                         style: TextStyle(
//                             color: Colors.white, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:smart_card/utils/text_constants.dart';
import 'package:smart_card/view/register_screen/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
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
                      borderRadius: BorderRadius.circular(15),
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
                    height: 40,
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
                                  "asset/images/email.png",
                                  scale: 15,
                                ),
                                hintText: "Email ID",
                                hintStyle: MytextStyle.hintStyle
                                // hintStyle: TextStyle(fontSize: 15)
                                //labelText: "Email"
                                ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            obscureText: true,
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
                                hintStyle: MytextStyle.hintStyle
                                //labelText: "Password"
                                ),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.grey,
                                checkColor: Colors.red,
                                value: isChecked,
                                onChanged: (value) {
                                  if (value != null) {
                                    isChecked = value;
                                  }
                                  setState(() {});
                                },
                              ),
                              Text(
                                "Remember me",
                                style: MytextStyle.normalText,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            width: 150,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  elevation: WidgetStatePropertyAll(5),
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.red)),
                              onPressed: () {},
                              child: Text(
                                "LOGIN",
                                style: MytextStyle.buttonStyle,
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          TextButton(
                              onPressed: () {},
                              child: Text("Forgot Password?")),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Container(
                            height: 40,
                            width: 150,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  elevation: WidgetStatePropertyAll(5),
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.red)),
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegisterScreen(),
                                    ),
                                    (route) => false);
                              },
                              child: Text(
                                "REGISTER",
                                style: MytextStyle.buttonStyle,
                              ),
                            ),
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
