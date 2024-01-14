import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  const DialogBox({
    super.key,
    this.controller,});

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
                  MyButton(onPressed: (){}, text: "Save"),
                  const SizedBox(width : 28),
                  MyButton(onPressed: (){}, text: "Cancel")
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