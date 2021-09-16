// import 'package:flutter/cupertino.dart';
// import 'icon_widget.dart';
import 'dart:core';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();

  //TODO: CREATE DARK MODE SWITCH IN SETTINGS PAGE

  @override
  Widget build2(BuildContext context) => Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.search),
                title: Text("Search"),
                subtitle: Text("Type What You're looking For"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text("Search!"),
                    onPressed: () {/* ...*/},
                  ),
                  const SizedBox(width: 8)
                ],
              )
            ],
          ),
        ),
      );

  Widget build1(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
            width: 50,
            child: Text("Info: "),
          ),
          SizedBox(height: 20, width: 50, child: Text("Dark Mode")),
        ],
      );
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.lightGreenAccent[50],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: "Exit",
            backgroundColor: Colors.lightGreenAccent[50],
          )
        ],
      ));
}

// class userInfo extends StatelessWidget {
//   final String userTrueName;
//   final String firstPlant;

//   const userInfo(
//       {Key? key, required this.userTrueName, required this.firstPlant})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) => Center(
//         child: Card(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               const ListTile(
//                 leading: Icon(Icons.search),
//                 title: Text("Search"),
//                 subtitle: Text("Type What You're looking For"),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: <Widget>[
//                   TextButton(
//                     child: const Text("Search!"),
//                     onPressed: () {/* ...*/},
//                   ),
//                   const SizedBox(width: 8)
//                 ],
//               )
//             ],
//           ),
//         ),
//       );
//  }

// class _SettingsPageState extends State<SettingsPage> {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: const Text("Settings"),
//         ),
//         body: SafeArea(
//           child: ListView(
//             padding: EdgeInsets.all(24),
//             children: [
//               SettingsGroup(
//                 title: "GENERAL",
//                 children: <Widget>[
//                   AccountPage(),
//                   buildLogout(),
//                   buildDeleteAccount(),
//                 ],
//               ),
//               const SizedBox(height: 32),
//               SettingsGroup(
//                 title: "FEEDBACK",
//                 children: <Widget>[
//                   const SizedBox(height: 8),
//                   buildReportBug(context),
//                   buildSendFeedback(context),
//                 ],
//               )
//             ],
//           ),
//         ),
//       );

//   Widget buildLogout() => SimpleSettingsTile(
//         title: "Logout",
//         subtitle: "",
//         leading: IconWidget(icon: Icons.logout, color: Colors.purpleAccent),
//         onTap: () {
//           const snackBar = SnackBar(content: Text('Lougout'));

//           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//         },
//       );

//   //  => Utils.showSnackBar(context, "Clicked Logout"));

//   Widget buildDeleteAccount() => SimpleSettingsTile(
//       title: "Delete Account",
//       subtitle: "",
//       leading: IconWidget(icon: Icons.delete, color: Colors.redAccent));

//   Widget buildReportBug(BuildContext context) => SimpleSettingsTile(
//       title: "Report Bug",
//       subtitle: "",
//       leading: IconWidget(icon: Icons.bug_report, color: Colors.purpleAccent));

//   Widget buildSendFeedback(BuildContext context) => SimpleSettingsTile(
//       title: "Send Feedback",
//       subtitle: "",
//       leading: IconWidget(icon: Icons.feedback, color: Colors.purpleAccent));
// }
