import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Settings",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 30),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/Doc4.jpg"),
              ),
              title: Text(
                "Dr.Doctor Name",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              subtitle: Text("Physiologist"),
            ),
           SizedBox (height: 50),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF8EB8E2),
                  shape: BoxShape.circle,
                ),
                child: Icon(CupertinoIcons.person,
                  color: Colors.white, size: 30,
                ),
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 10),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:Color(0xFF8EB8E2),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.notifications_none_outlined,
                  color: Colors.white, size: 30,
                ),
              ),
              title: Text(
                "Notifications",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF8EB8E2),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.privacy_tip_outlined,
                  color: Colors.white, size: 30,
                ),
              ),
              title: Text(
                "Privacy",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF8EB8E2),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.settings_suggest_outlined,
                  color: Colors.white, size: 30,
                ),
              ),
              title: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:Color(0xFF8EB8E2),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.info_outline_rounded,
                  color: Colors.white, size: 30,
                ),
              ),
              title: Text(
                "About Us",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            Divider(height: 40),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.logout_outlined,
                  color: Colors.red.shade200, size: 30,
                ),
              ),
              title: Text(
                "Log Out",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
