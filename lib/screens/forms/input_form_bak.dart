// import 'package:smart_admin_dashboard/core/constants/color_constants.dart';
// import 'package:flutter/material.dart';

// import 'models/user.dart';

// class FormMaterialBackup extends StatefulWidget {
//   @override
//   _FormMaterialBackupState createState() => _FormMaterialBackupState();
// }

// class _FormMaterialBackupState extends State<FormMaterialBackup> {
//   final _formKey = GlobalKey<FormState>();
//   final _user = User();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(),
//       body: SingleChildScrollView(
//         child: Card(
//           color: bgColor,
//           elevation: 5,
//           margin: EdgeInsets.fromLTRB(64, 64, 64, 64),
//           child: Padding(
//             padding: const EdgeInsets.all(32.0),
//             child: Container(
//                 padding: const EdgeInsets.symmetric(
//                     vertical: 16.0, horizontal: 16.0),
//                 child: Builder(
//                     builder: (context) => Form(
//                         key: _formKey,
//                         child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.stretch,
//                             children: [
//                               TextFormField(
//                                 style: TextStyle(
//                                   fontFamily: 'HelveticaNeue',
//                                 ),
//                                 decoration: InputDecoration(
//                                   labelText: 'First name',
//                                   labelStyle: TextStyle(
//                                     fontSize: 18,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontFamily: 'HelveticaNeue',
//                                   ),
//                                 ),
//                                 validator: (value) {
//                                   if (value!.isEmpty) {
//                                     return 'Please enter your first name';
//                                   }
//                                 },
//                                 onSaved: (val) =>
//                                     setState(() => _user.firstName = val!),
//                               ),
//                               TextFormField(
//                                   decoration: InputDecoration(
//                                     labelText: 'Last name',
//                                     labelStyle: TextStyle(
//                                       fontSize: 18,
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                       fontFamily: 'HelveticaNeue',
//                                     ),
//                                   ),
//                                   validator: (value) {
//                                     if (value!.isEmpty) {
//                                       return 'Please enter your last name.';
//                                     }
//                                   },
//                                   onSaved: (val) =>
//                                       setState(() => _user.lastName = val!)),
//                               Container(
//                                 padding:
//                                     const EdgeInsets.fromLTRB(0, 50, 0, 20),
//                                 child: Text(
//                                   'Subscribe',
//                                   style: TextStyle(
//                                     fontSize: 24,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontFamily: 'HelveticaNeue',
//                                   ),
//                                 ),
//                               ),
//                               SwitchListTile(
//                                   title: const Text(
//                                     'To our Monthly Subscription',
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       color: Colors.white,
//                                       fontFamily: 'HelveticaNeue',
//                                     ),
//                                   ),
//                                   value: _user.monthlyNewsletter,
//                                   onChanged: (bool val) => setState(
//                                       () => _user.monthlyNewsletter = val)),
//                               SwitchListTile(
//                                   title: const Text(
//                                     'To our Yearly Subscription',
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       color: Colors.white,
//                                       fontFamily: 'HelveticaNeue',
//                                     ),
//                                   ),
//                                   value: _user.yearlyNewsletter,
//                                   onChanged: (bool val) => setState(
//                                       () => _user.yearlyNewsletter = val)),
//                               SwitchListTile(
//                                   title: const Text(
//                                     'To our Weekly Subscription',
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       color: Colors.white,
//                                       fontFamily: 'HelveticaNeue',
//                                     ),
//                                   ),
//                                   value: _user.weeklyNewsletter,
//                                   onChanged: (bool val) => setState(
//                                       () => _user.weeklyNewsletter = val)),
//                               Container(
//                                 padding:
//                                     const EdgeInsets.fromLTRB(0, 50, 0, 20),
//                                 child: Text(
//                                   'Interests',
//                                   style: TextStyle(
//                                     fontSize: 24,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontFamily: 'HelveticaNeue',
//                                   ),
//                                 ),
//                               ),
//                               CheckboxListTile(
//                                   title: const Text(
//                                     'Writing',
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       color: Colors.white,
//                                       fontFamily: 'HelveticaNeue',
//                                     ),
//                                   ),
//                                   value: _user.passions[User.PassionWriting],
//                                   onChanged: (val) {
//                                     setState(() => _user
//                                         .passions[User.PassionWriting] = val);
//                                   }),
//                               CheckboxListTile(
//                                   title: const Text(
//                                     'Singing',
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       color: Colors.white,
//                                       fontFamily: 'HelveticaNeue',
//                                     ),
//                                   ),
//                                   value: _user.passions[User.PassionSinging],
//                                   onChanged: (val) {
//                                     setState(() => _user
//                                         .passions[User.PassionSinging] = val);
//                                   }),
//                               CheckboxListTile(
//                                   title: const Text(
//                                     'Travelling',
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       color: Colors.white,
//                                       fontFamily: 'HelveticaNeue',
//                                     ),
//                                   ),
//                                   value: _user.passions[User.PassionTraveling],
//                                   onChanged: (val) {
//                                     setState(() => _user
//                                         .passions[User.PassionTraveling] = val);
//                                   }),
//                               CheckboxListTile(
//                                   title: const Text(
//                                     'Cooking',
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       color: Colors.white,
//                                       fontFamily: 'HelveticaNeue',
//                                     ),
//                                   ),
//                                   value: _user.passions[User.PassionCooking],
//                                   onChanged: (val) {
//                                     setState(() => _user
//                                         .passions[User.PassionCooking] = val);
//                                   }),
//                               Container(
//                                   height: 80,
//                                   // margin: EdgeInsets.only(left: 200, right: 200),
//                                   padding: const EdgeInsets.symmetric(
//                                       vertical: 16.0, horizontal: 16.0),
//                                   child: ElevatedButton(
//                                       onPressed: () {
//                                         if (_formKey.currentState!.validate()) {
//                                           _formKey.currentState!.save();
//                                           _user.save();
//                                           _showDialog(context);
//                                           print(_user);
//                                           print(_user.firstName);
//                                         }
//                                       },
//                                       child: Text(
//                                         'Save',
//                                         style: TextStyle(
//                                           fontSize: 16,
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.bold,
//                                           fontFamily: 'HelveticaNeue',
//                                         ),
//                                       ))),
//                             ])))),
//           ),
//         ),
//       ),
//     );
//   }

//   _showDialog(BuildContext context) {
//     Scaffold.of(context).showSnackBar(SnackBar(
//         content: Container(
//             child: Row(
//       children: [
//         Icon(
//           Icons.verified,
//           color: bgColor,
//         ),
//         SizedBox(
//           width: 25,
//         ),
//         Text('Submitting form'),
//       ],
//     ))));
//   }
// }
