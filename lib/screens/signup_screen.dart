import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_care_app/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
     color: Colors.white,
     child: SingleChildScrollView(
       child: SafeArea(
         child: Column(
           children: [
             SizedBox(height: 10),
             Padding(
               padding: EdgeInsets.all(10),
               child: Image.asset("assets/images/Doctor1.png"),
             ),
             SizedBox(height: 10),
             Padding(
               padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
               child: TextField(
                 decoration: InputDecoration(
                   labelText: "Full Name",
                   border: OutlineInputBorder(),
                   prefixIcon: Icon(Icons.person),
                 ),
               ),
             ),
             Padding(
               padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
               child: TextField(
                 decoration: InputDecoration(
                   labelText: "Email Address",
                   border: OutlineInputBorder(),
                   prefixIcon: Icon(Icons.email),
                 ),
               ),
             ),
             Padding(
               padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
               child: TextField(
                 decoration: InputDecoration(
                   labelText: "Phone Number",
                   border: OutlineInputBorder(),
                   prefixIcon: Icon(Icons.phone),
                 ),
               ),
             ),
             Padding(
               padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
               child: TextField(
                 decoration: InputDecoration(
                   labelText: "Username",
                   border: OutlineInputBorder(),
                   prefixIcon: Icon(Icons.person),
                 ),
               ),
             ),
             Padding(
               padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
               child: TextField(
                 obscureText: passToggle? true : false,
                 decoration: InputDecoration(
                   labelText: "Password",
                   border: OutlineInputBorder(),
                   prefixIcon: Icon(Icons.lock),
                   suffixIcon: InkWell(
                     onTap: () {
                       if (passToggle == true){
                         passToggle = false;
                       }else{
                         passToggle = true;
                       }
                       setState(() {});
                     },
                     child: passToggle
                         ? Icon(CupertinoIcons.eye_slash_fill)
                         : Icon(CupertinoIcons.eye_fill),
                   ),
                 ),
               ),
             ),
             SizedBox(height: 10),
             Padding(
               padding: const EdgeInsets.all(10),
               child: SizedBox(
                 width: double.infinity,
                 child: Material(
                   color: Color(0xFF8EB8E2),
                   borderRadius: BorderRadius.circular(10),
                   child: InkWell(
                     onTap: (){
                       // Navigator.push(context, MaterialPageRoute(
                       //   builder: (context) => LoginScreen(),
                       // ));
                     },
                     child: Padding(
                       padding: EdgeInsets.symmetric(
                           vertical: 10, horizontal: 35),
                       child: Center(
                         child: Text(
                           "Sign up",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 24,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
               ),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Already have an account?",
                   style: TextStyle(
                     fontWeight: FontWeight.w500,
                     fontSize: 16,
                     color: Colors.black54,
                   ),
                 ),
                 TextButton(onPressed: () {
                   Navigator.push(context, MaterialPageRoute(
                     builder: (context) => LoginScreen(),
                   ));
                 },
                   child: Text(
                     "Log in",
                     style: TextStyle(
                       color: Colors.red,
                       fontSize: 16,
                       fontWeight: FontWeight.w500,
                     ),
                   ),
                 ),
               ],
             ),
           ],
         ),
       ),
     ), 
    );
  }
}
