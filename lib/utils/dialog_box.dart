import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/utils/my_button.dart';
// import 'package:flutter_to_do_app/pages/home_page.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    this.controller,
    required this.onCancel,
    required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.yellow,
        content: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //get user input
              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder(),
                  hintText: "Add a new task",),

              ),

              //button -> save + cancel
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(onPressed: onSave,
                      text: "Save"),
                  const SizedBox(width : 28),
                  MyButton(onPressed: onCancel,
                      text: "Cancel")
                ],
              )
            ],
          ),
        ));
  }
}















//
//
// class DialogBox extends StatelessWidget {
//   final controller;
//   const DialogBox(super.key, required this.controller,);
//
//   @override
//   State<DialogBox> createState() => _DialogBoxState();
// }
//
// class _DialogBoxState extends State<DialogBox> {
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//         backgroundColor: Colors.yellow,
//         content: Container(
//           height: 120,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               //get user input
//               TextField(
//                 controller: ,
//                 decoration: InputDecoration(border: OutlineInputBorder(),
//                   hintText: "Add a new task",),
//
//               ),
//
//               //button -> save + cancel
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                     MyButton(onPressed: (){}, text: "Save"),
//                     const SizedBox(width : 28),
//                   MyButton(onPressed: (){}, text: "Cancel")
//                 ],
//               )
//             ],
//           ),
//         ));
//   }
// }
