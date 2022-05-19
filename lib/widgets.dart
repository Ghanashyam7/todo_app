//
//
import 'package:flutter/material.dart';
//
// class TaskCard extends StatelessWidget {
//   final String title;
//   final String desc;
//
//   TaskCard({required this.title, required this.desc});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       padding: EdgeInsets.symmetric(
//         vertical: 32.0,
//         horizontal: 24.0,
//       ),
//       margin: EdgeInsets.only(
//         bottom: 20.0,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20.0),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title ?? "(Unnamed Task)",
//             style: TextStyle(
//               color: Color(0xFF211551),
//               fontSize: 22.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//               top: 10.0,
//             ),
//             child: Text(
//               desc ?? "No Description Added",
//               style: TextStyle(
//                 fontSize: 16.0,
//                 color: Color(0xFF86829D),
//                 height: 1.5,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//
class TodoWidget extends StatelessWidget {
  final String text;
  final bool isDone;
  TodoWidget({required this.text, required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: isDone ? (Colors.blue) : Colors.transparent,
                borderRadius: BorderRadius.circular(6.0),
                border: isDone
                    ? null
                    : Border.all(
                        color: Colors.blueGrey,
                      ),
              ),
              child: Image(
                width: 25.0,
                height: 25.0,
                image: AssetImage('assets/images/check_icon.png'),
              ),
            ),
          ),
          Text(
           "nnnnnnnn",
            style: TextStyle(
                color: isDone ? (Colors.black) : (Colors.blueGrey),
                fontSize: 16.0,
                fontWeight: isDone ? FontWeight.bold : FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
//
