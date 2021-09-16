// import 'package:flutter/material.dart';
// import 'package:multi_select_flutter/multi_select_flutter.dart';

// /// This will be the page that has all of the plants in a tile format
// /// When a user "taps", this will save the info and push to the collection page
// ///

// class Plants {
//   final int plantId;
//   final String plantName;

//   Plants({
//     required this.plantId,
//     required this.plantName,
//   });
// }

// class PlantList extends StatefulWidget {
//   PlantList({Key? key, required this.title}) : super(key: key);
//   final String title;

//   @override
//   _PlantListState createState() => _PlantListState();
// }

// class _PlantListState extends State<PlantList> {
//   static List<Plants> _plants = [
//     Plants(plantId: 1, plantName: "Fiddle Leaf Fig"),
//     Plants(plantId: 2, plantName: "Snake Plant"),
//     Plants(plantId: 3, plantName: "Pothos/Devil's Ivy"),
//     Plants(plantId: 4, plantName: "Rubber Tree"),
//     Plants(plantId: 5, plantName: "Parlor Palm"),
//     Plants(plantId: 6, plantName: "Peperomia"),
//     Plants(plantId: 7, plantName: "Crouton"),
//     Plants(plantId: 8, plantName: "Elephant Ears"),
//     Plants(plantId: 9, plantName: "Pickle Plant"),
//     Plants(plantId: 10, plantName: "Pig's Ear"),
//   ];
//   final _items = _plants
//       .map((plant) => MultiSelectItem<Plants>(plant, plant.plantName))
//       .toList();
//   List<Plants> _selectedPlants1 = [];
//   List<Plants> _selectedPlants2 = [];
//   List<Plants> _selectedPlants3 = [];
//   List<Plants> _selectedPlants4 = [];
//   List<Plants> _selectedPlants5 = [];
//   List<Plants> _selectedPlants6 = [];
//   List<Plants> _selectedPlants7 = [];
//   List<Plants> _selectedPlants8 = [];
//   List<Plants> _selectedPlants9 = [];
//   List<Plants> _selectedPlants10 = [];

//   final _multiSelectKey = GlobalKey<FormFieldState>();

//   @override
//   void initState() {
//     _selectedPlants5 = _plants;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: SingleChildScrollView(
//           child: Container(
//         alignment: Alignment.center,
//         padding: EdgeInsets.all(25),
//         child: Column(
//           children: <Widget>[
//             SizedBox(
//               height: 50,
//             ),
//             //################################################################################################
//             // Rounded blue MultiSelectDialogField
//             //################################################################################################
//             MultiSelectDialogField(
//               items: _items,
//               title: Text("Plants"),
//               selectedColor: Colors.green,
//               decoration: BoxDecoration(
//                 color: Colors.green.withOpacity(0.1),
//                 borderRadius: BorderRadius.all(Radius.circular(40)),
//                 border: Border.all(color: Colors.green, width: 2),
//               ),
//               buttonIcon: Icon(
//                 Icons.gamepad,
//               ),
//               buttonText: Text(
//                 "Your Plants",
//                 style: TextStyle(
//                   color: Colors.green[800],
//                   fontSize: 16,
//                 ),
//               ),
//               onConfirm: (results) {
//                 //_selectedPlants5 = results;
//               },
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             //################################################################################################
//             // This MultiSelectBottomSheetField has no decoration, but is instead wrapped in a Container that has
//             // decoration applied. This allows the ChipDisplay to render inside the same Container.
//             //################################################################################################
//             Container(
//               decoration: BoxDecoration(
//                 color: Theme.of(context).primaryColor.withOpacity(.4),
//                 border: Border.all(
//                   color: Theme.of(context).primaryColor,
//                   width: 2,
//                 ),
//               ),
//               child: Column(
//                 children: <Widget>[
//                   MultiSelectBottomSheetField(
//                     initialChildSize: 0.4,
//                     listType: MultiSelectListType.CHIP,
//                     searchable: true,
//                     buttonText: Text("Your Plant Collection"),
//                     title: Text("Plants"),
//                     items: _items,
//                     onConfirm: (values) {
//                       //  _selectedPlants2 = values;
//                     },
//                     chipDisplay: MultiSelectChipDisplay(
//                       onTap: (value) {
//                         setState(() {
//                           _selectedPlants2.remove(value);
//                         });
//                       },
//                     ),
//                   ),
//                   // ignore: unnecessary_null_comparison
//                   _selectedPlants2 == null || _selectedPlants2.isEmpty
//                       ? Container(
//                           padding: EdgeInsets.all(10),
//                           alignment: Alignment.centerLeft,
//                           child: Text(
//                             "None Selected",
//                             style: TextStyle(color: Colors.black54),
//                           ))
//                       : Container(),
//                 ],
//               ),
//             ),
//             SizedBox(height: 40),
//             //################################################################################################
//             // MultiSelectBottomSheetField with validators
//             //################################################################################################
//             MultiSelectBottomSheetField<Plants>(
//               key: _multiSelectKey,
//               initialChildSize: 0.7,
//               maxChildSize: 0.95,
//               title: Text("Plants"),
//               buttonText: Text("Owned Plants"),
//               items: _items,
//               searchable: true,
//               validator: (values) {
//                 if (values == null || values.isEmpty) {
//                   return "Required";
//                 }
//                 List names = values.map((e) => e.plantName).toList();
//                 if (names.contains("Mushroom")) {
//                   return "Mushrooms are not available";
//                 }
//                 return null;
//               },
//               onConfirm: (values) {
//                 setState(() {
//                   _selectedPlants3 = values;
//                 });
//                 _multiSelectKey.currentState!.validate();
//               },
//               chipDisplay: MultiSelectChipDisplay(
//                 onTap: (item) {
//                   setState(() {
//                     _selectedPlants3.remove(item);
//                   });
//                   _multiSelectKey.currentState!.validate();
//                 },
//               ),
//             ),
//             SizedBox(height: 40),
//             MultiSelectChipField(
//                 items: _items,
//                 initialValue: [_plants[4], _plants[7], _plants[9]],
//                 title: Text("Plants"),
//                 headerColor: Colors.green.withOpacity(0.5),
//                 decoration: BoxDecoration(
//                   border:
//                       Border.all(color: Colors.lightGreenAccent, width: 1.8),
//                 ),
//                 selectedChipColor: Colors.green.withOpacity(0.5),
//                 selectedTextStyle: TextStyle(color: Colors.green[800]),
//                 onTap: (values) {
//                   //  _selectedPlants4 = values;
//                 }),
//             SizedBox(height: 40),
//             //################################################################################################
//             // MultiSelectDialogField with initial values
//             //################################################################################################
//             MultiSelectDialogField(
//                 onConfirm: (val) {
//                   //  _selectedPlants5 = val;
//                 },
//                 items: _items,
//                 initialValue: _selectedPlants5),
//           ],
//         ),
//       )),
//     );
//   }
// }
