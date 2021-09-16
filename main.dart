import 'package:flutter/material.dart';
import 'package:flutter_application_00/page/collection_page.dart';
//import 'package:flutter_application_00/page/account_page.dart';
import 'package:flutter_application_00/page/plant_list.dart';
import 'package:flutter_application_00/page/settings_page.dart';
//import 'package:flutter_application_00/page/collection_page.dart';
import 'package:flutter_application_00/page/signup_page.dart';
//import 'package:flutter_settings_screens/flutter_settings_screens.dart';

void main() => runApp(MyPlantApp());

/// App Home/Landing Page
/// Background

class MyPlantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Plant Collection",
      theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.purpleAccent[200],
          fontFamily: 'Calibri'),
      home: MyHomePage(title: "Login"),
    );
  }
}

/// Interactive Part of Front Page

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Calibri', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    /// Email Entry Field
    final emailField = TextField(
      //  username/email field   //emailField ??
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    /// Password Entry Field
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    /// Login Button
    /// TODO: Add Google Authentication(maybe research Firebase?)
    /// TODO: Create Route that pushes registered user to their Collection page

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(45),
      color: Colors.green,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),

        /// Button that pushes user to the PlantList page/Collection
        /// Disabled at the moment to rebuild page
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CollectionPage()),
          );
        },
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style:
              style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    /// Sign-Up Button
    final signUpButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(45),
      color: Colors.green,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (
            //  Pressing this will direct users to the signup page
            ) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignUpPage()),
          );
        },
        child: Text(
          "Sign Up",
          textAlign: TextAlign.center,
          style:
              style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    // ElevatedButton.icon(
    //   icon: Icon(Icons.arrow_back, size: 16),
    //   label: Text("Settings"),
    //   onPressed: () {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => SettingsPage()),
    //     );
    //   },
    // );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child:
                      Image.asset("asset/plant_logo2.png", fit: BoxFit.contain),
                ),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(height: 35.0),
                loginButton,
                SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                signUpButton,
                SizedBox(
                  height: 15.0,
                ),
                ElevatedButton.icon(
                  icon: Icon(Icons.arrow_forward, size: 16),
                  label: Text("Settings"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsPage()),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),

      /// Navigation Bar
      /// Maybe move this to the user's collection page instead of login/landing page?

      /// Moved to collection_page.dart
      // bottomNavigationBar: BottomNavigationBar(
      //   showSelectedLabels: false,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //       backgroundColor: Colors.lightGreenAccent[50],
      //     ),
      //
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.close),
      //       label: "Exit",
      //       backgroundColor: Colors.lightGreenAccent[50],
      //     )
      //   ],
      // ),
    );
  }
}
