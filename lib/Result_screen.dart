import 'package:flutter/material.dart';
import 'package:task_3_mpi/AppColors.dart';

class Result extends StatelessWidget {
  Result({
    super.key,
    required this.result,
    required this.stets,
    required this.statscolor,
  });
  final double result;
  final String stets;
  final Color statscolor;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.background,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Appcolors.Whait,
        ),
      ),
      backgroundColor: Appcolors.background,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ResultText(),
            SizedBox(height: 30),
            result_contanir(),
            SizedBox(height: 15),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Appcolors.ActiveColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Recalculate',
                    style: TextStyle(
                      color: Appcolors.Whait,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded result_contanir() {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Appcolors.CardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                stets,
                style: TextStyle(
                  color: statscolor,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 50),
              Text(
                '${result.toStringAsFixed(1)}',
                style: TextStyle(
                  color: Appcolors.Whait,
                  fontSize: 70,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row ResultText() {
    return Row(
      children: [
        Text(
          'Your result',
          style: TextStyle(
            color: Appcolors.Whait,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
