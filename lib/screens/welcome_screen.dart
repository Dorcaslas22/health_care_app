import 'package:flutter/material.dart';
import 'package:health_care_app/screens/login_screen.dart';
import 'package:health_care_app/widgets/navbar_roots.dart';
import 'package:health_care_app/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
             SizedBox(height: 15),
            Align(alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => NavBarRoots(),
                  ));
                },
                child:  Text(
                    "Skip",
                  style: TextStyle(
                    color: Color(0xFF8EB8E2),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
             SizedBox(height: 40),
            Padding(padding: const EdgeInsets.all(10),
              child: Image.asset("assets/images/Doctor1.png"),
            ),
             SizedBox(height: 40),
             Text(
              "Doctors Appointment",
              style: TextStyle(
                color: Color(0xFF8EB8E2),
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
            ),
             SizedBox(height: 5),
             Text(
              "Book a Doctor",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color(0xFF8EB8E2),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                    },
                    child: Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                      child: Text("Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Color(0xFF8EB8E2),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ));
                    },
                    child: Padding(padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 35),
                      child: Text("Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
