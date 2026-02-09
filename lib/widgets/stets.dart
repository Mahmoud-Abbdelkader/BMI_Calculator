import 'package:flutter/material.dart';

class Stets {
  final double result;

  Stets({required this.result});

  String getStatus() {
    if (result < 18.5) {
      return 'UNDER';
    } else if (result < 25) {
      return 'NORMAL';
    } else if (result < 30) {
      return 'OVER';
    } else {
      return 'OBESE';
    }
  }
   Color getStatscolor() {
    if (result < 18.5) {
      return Colors.deepOrangeAccent;
    } else if (result < 25) {
      return Colors.green;
    } else if (result < 30) {
      return Colors.lightBlue;
    } else {
      return Colors.red;
    }
  
  }
}
// class Statscolor {
//   final double resultcolor;

//   Statscolor({required this.resultcolor});
//   Color getStatscolor() {
//     if (resultcolor < 18.5) {
//       return Colors.deepOrangeAccent;
//     } else if (resultcolor < 25) {
//       return Colors.green;
//     } else if (resultcolor < 30) {
//       return Colors.lightBlue;
//     } else {
//       return Colors.red;
//     }
  
//   }
// }
