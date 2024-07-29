import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 197, 194),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Image.asset(
              "asset/images/Artboard.png",
              fit: BoxFit.contain,
              height: 80,
            ),
          ],
        ),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: SizedBox(
              height: 30,
            )),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
          child: Container(
            // height: MediaQuery.sizeOf(context).height / 1.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 232, 230, 230)),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Container(
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.only(
                  //         bottomLeft: Radius.circular(30),
                  //         bottomRight: Radius.circular(30)),
                  //     color: Colors.white,
                  //   ),
                  //   // ignore: sort_child_properties_last
                  //   child: Column(
                  //     children: [
                  //       Image.asset(
                  //         "asset/images/Artboard.png",
                  //         scale: 9,
                  //       ),
                  //       Text(
                  //         "REGISTER",
                  //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  //       ),
                  //     ],
                  //   ),
                  //   width: MediaQuery.sizeOf(context).width,
                  //   height: MediaQuery.sizeOf(context).height / 5,
                  // ),

                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
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
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      hintText: "Password",
                      // hintStyle: TextStyle(fontSize: 10)
                      //labelText: "Password"
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                      Text("Remember me")
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    width: 160,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          elevation: WidgetStatePropertyAll(5),
                          backgroundColor: WidgetStatePropertyAll(Colors.red)),
                      onPressed: () {},
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(onPressed: () {}, child: Text("Forgot Password?")),
                  Container(
                    height: 40,
                    width: 160,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          elevation: WidgetStatePropertyAll(5),
                          backgroundColor: WidgetStatePropertyAll(Colors.red)),
                      onPressed: () {},
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
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
