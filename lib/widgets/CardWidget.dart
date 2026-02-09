// ignore:CardWidget.dart
import 'package:flutter/material.dart';
import 'package:task_3_mpi/AppColors.dart';

class Card_gender extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isslect;
  final Function() ontap;
  const Card_gender({
    super.key,
    required this.icon,
    required this.isslect,
    required this.text,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
            color: (isslect)? Appcolors.ActiveColor : Appcolors.CardColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Appcolors.Whait, size: 80),
              SizedBox(height: 10),
              Text(
                text,
                style: TextStyle(
                  color: Appcolors.Whait,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
