import 'package:flutter/material.dart';
// import 'package:flutter_application_00/page/plant_list.dart';
// ignore: unused_import
import 'package:flutter_application_00/page/settings_page.dart';

// ignore: must_be_immutable
class CollectionPage extends StatelessWidget {
  TextStyle style = TextStyle(fontFamily: 'Calibri', fontSize: 20.0);

  @override
  Widget build(BuildContext context) =>

      /// Plant List
      ///
      ListView(
        children: const <Widget>[
          Card(
            child: ListTile(
              title: Text("Spider Plant"),
              tileColor: Colors.lightGreenAccent,
              subtitle: Text("Chlorophytum comosum"),
              hoverColor: Colors.green,
              enableFeedback: true,
            ),
            elevation: 7,
          ),
          Card(
            child: ListTile(
              title: Text("Snake Plant"),
              tileColor: Colors.lightGreenAccent,
              subtitle: Text("Dracaena trifasciata"),
              hoverColor: Colors.green,
              enableFeedback: true,
            ),
            elevation: 7,
          ),
          Card(
            child: ListTile(
              title: Text("Devil's Ivy"),
              tileColor: Colors.lightGreenAccent,
              subtitle: Text("Epipremnum aureum"),
              hoverColor: Colors.green,
              enableFeedback: true,
            ),
            elevation: 7,
          ),
          Card(
            child: ListTile(
              title: Text("Parlor Palm"),
              tileColor: Colors.lightGreenAccent,
              subtitle: Text("Chamaedorea elegans"),
              hoverColor: Colors.green,
              enableFeedback: true,
            ),
            elevation: 7,
          ),
          Card(
            child: ListTile(
              title: Text("Rubber Tree"),
              tileColor: Colors.lightGreenAccent,
              subtitle: Text("Hevea brasiliensis"),
              hoverColor: Colors.green,
              enableFeedback: true,
            ),
            elevation: 7,
          ),
          Card(
            child: ListTile(
              title: Text("Pickle Plant"),
              tileColor: Colors.lightGreenAccent,
              subtitle: Text("Delosperma echinatum"),
              hoverColor: Colors.green,
              enableFeedback: true,
            ),
            elevation: 7,
          ),
          Card(
            child: ListTile(
              title: Text("ZZ Plant"),
              tileColor: Colors.lightGreenAccent,
              subtitle: Text("Zamioculcas"),
              hoverColor: Colors.green,
              enableFeedback: true,
            ),
            elevation: 7,
          ),
          Card(
            child: ListTile(
              title: Text("Dragon Fingers"),
              tileColor: Colors.lightGreenAccent,
              subtitle: Text("Sansevieria cylindrica"),
              hoverColor: Colors.green,
              enableFeedback: true,
            ),
            elevation: 7,
          ),
          Card(
            child: ListTile(
              title: Text("Swiss Cheese Plant"),
              tileColor: Colors.lightGreenAccent,
              subtitle: Text("Monstera deliciosa"),
              hoverColor: Colors.green,
              enableFeedback: true,
            ),
            elevation: 7,
          ),
          Card(
            child: ListTile(
              title: Text("Croton"),
              tileColor: Colors.lightGreenAccent,
              subtitle: Text("Codiaeum variegatum"),
              hoverColor: Colors.green,
              enableFeedback: true,
            ),
            elevation: 7,
          ),
        ],
      );

  //

  //   /// Settings Button
  //   final settingsButton = Material(
  //     elevation: 5.0,
  //     borderRadius: BorderRadius.circular(15),
  //     color: Colors.green,
  //     child: MaterialButton(
  //       minWidth: MediaQuery.of(context)
  //           .size
  //           .width, //  adjusts the width of loginButton
  //       padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
  //       onPressed: () {
  //         // Navigator.push(
  //         //   context,
  //         //   MaterialPageRoute(builder: (context) => SettingsPage()),
  //         // );
  //       },
  //       child: Text(
  //         "Settings",
  //         textAlign: TextAlign.center,
  //         style:
  //             style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
  //       ),
  //     ),
  //   );

  //   return Scaffold(
  //     body: Center(
  //       // child: ElevatedButton(
  //       //   onPressed: () {
  //       //     Navigator.push(
  //       //       context,
  //       //       MaterialPageRoute(builder: (context) => SettingsPage()),
  //       //     );
  //       //   },
  //       child: Container(
  //         color: Colors.white,
  //         // child: Padding(
  //         //   padding: const EdgeInsets.all(24.0),
  //         //   child: Column(
  //         //     crossAxisAlignment: CrossAxisAlignment.center,
  //         //     mainAxisAlignment: MainAxisAlignment.center,
  //         //     children: <Widget>[
  //         //       // SizedBox(
  //         //       //   height: 155.0,
  //         //       //   child:
  //         //       //       Image.asset("asset/plant_logo2.png", fit: BoxFit.contain),
  //         //       // ),
  //         //       SizedBox(
  //         //         height: 15.0,
  //         //       ),
  //         //       settingsButton,
  //         //     ],
  //         //   ),
  //         // ),
  //       ),
  //     ),

  //     /// This somehow work with No Null Safety?
  //     /// TODO: Find out how and why?
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: () {
  //         // Navigator.push(
  //         //   context,
  //         //   MaterialPageRoute(builder: (context) => PlantList()),
  //         // );
  //       },
  //       child: const Icon(Icons.settings),
  //       backgroundColor: Colors.green,
  //       // bottomNavigationBar: BottomNavigationBar(
  //       //   showSelectedLabels: false,
  //       //   currentIndex: 0,
  //       //   items: [
  //       //     BottomNavigationBarItem(
  //       //       icon: Icon(Icons.home),
  //       //       label: "Home",
  //       //       backgroundColor: Colors.lightGreenAccent[50],
  //       //     ),
  //       //     BottomNavigationBarItem(
  //       //       icon: Icon(Icons.settings),
  //       //       label: "Settings",
  //       //       backgroundColor: Colors.lightGreenAccent[50],
  //       //     ),
  //       //     BottomNavigationBarItem(
  //       //       icon: Icon(Icons.close),
  //       //       label: "Exit",
  //       //       backgroundColor: Colors.lightGreenAccent[50],
  //       //     )
  //       //   ],
  //       // ),
  //       // ),
  //     ),
  //   );
  // }

  // /// Idk?
  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }
}
