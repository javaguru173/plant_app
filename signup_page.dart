import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  TextStyle style = TextStyle(fontFamily: 'Calibri', fontSize: 20.0);

  // ignore: todo
  //  TODO: Create an alternate Google authentication
  @override
  Widget build(BuildContext context) {
    final nameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Name",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final emailField1 = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField2 = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField3 = TextField(
      // ignore: todo
      // TODO:
      // Create something that makes sure the user's password matches
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Re-Enter Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final plantField = TextField(
      //  User types in their first plant
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Your First Plant",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    /// Submit Button

    final submitButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(45),
      color: Colors.green,
      child: MaterialButton(
        minWidth: MediaQuery.of(context)
            .size
            .width, //  adjusts the width of loginButton
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text(
          "Submit",
          textAlign: TextAlign.center,
          style:
              style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    /// Return/Back Button

    final returnButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(45),
      color: Colors.green,
      child: MaterialButton(
        minWidth: MediaQuery.of(context)
            .size
            .width, //  adjusts the width of loginButton
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          "Go Back",
          textAlign: TextAlign.center,
          style:
              style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

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
                nameField,
                SizedBox(height: 25.0),
                emailField1,
                SizedBox(height: 35.0),
                passwordField2,
                SizedBox(height: 35.0),
                passwordField3,
                SizedBox(height: 35.0),
                plantField,
                SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                submitButton,
                SizedBox(
                  height: 15.0,
                ),
                returnButton,
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   showSelectedLabels: false,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //       backgroundColor: Colors.lightGreenAccent[50],
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.exit_to_app),
      //       label: "Exit",
      //       backgroundColor: Colors.lightGreenAccent[50],
      //     )
      //   ],
      // ),
    );
  }
}
