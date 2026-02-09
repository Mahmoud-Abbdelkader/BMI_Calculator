// ignore:CardWidget.dart
import 'package:flutter/material.dart';
import 'package:task_3_mpi/AppColors.dart';

class Card_count extends StatelessWidget {
  final String text;
  final int value;
  
  final Function() on_Add;
  final Function() on_remove;
  const Card_count({
    super.key,
    required this.text,
    required this.value,
    required this.on_Add,
    required this.on_remove,
    
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color:  Appcolors.CardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Appcolors.Whait,
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
            // SizedBox(height: 10),
            Text(
              '$value',
              style: TextStyle(
                color: Appcolors.Whait,
                fontSize: 32,
                fontWeight: FontWeight.w900,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton.filled(
                  style: IconButton.styleFrom(backgroundColor: Appcolors.grey),
                  onPressed: on_remove,
                  icon: Icon(Icons.remove),
                  iconSize: 25,
                ),
                SizedBox(width: 5),
                IconButton.filled(
                  style: IconButton.styleFrom(backgroundColor: Appcolors.grey),
                  onPressed: on_Add,
                  icon: Icon(Icons.add),
                  iconSize: 25,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
