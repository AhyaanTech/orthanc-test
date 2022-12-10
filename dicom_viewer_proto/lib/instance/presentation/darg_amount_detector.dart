// import 'package:flutter/widgets.dart';

// class MyDraggableWidget extends StatefulWidget {
//   @override
//   _MyDraggableWidgetState createState() => _MyDraggableWidgetState();
// }

// class _MyDraggableWidgetState extends State<MyDraggableWidget> {
//   Offset _dragStartPosition;
//   Offset _dragEndPosition;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: Container(...), // The widget you want to be draggable
//       onPanStart: (DragStartDetails details) {
//         setState(() {
//           _dragStartPosition = details.globalPosition;
//         });
//       },
//       onPanEnd: (DragEndDetails details) {
//         setState(() {
//           _dragEndPosition = details.globalPosition;
//         });
//       },
//     );
//   }

//   Offset calculateDragDelta() {
//     return _dragEndPosition - _dragStartPosition;
//   }
// }
