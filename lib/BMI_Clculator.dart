// ignore: file_names
import 'package:flutter/material.dart';
import 'package:task_3_mpi/AppColors.dart';
import 'package:task_3_mpi/Result_screen.dart';
import 'package:task_3_mpi/widgets/CardWidget.dart';
import 'package:task_3_mpi/widgets/WeightAndAge.dart';
import 'package:task_3_mpi/widgets/stets.dart';

class BmiClculator extends StatefulWidget {
  const BmiClculator({super.key});

  @override
  State<BmiClculator> createState() => _BmiClculatorState();
}

class _BmiClculatorState extends State<BmiClculator> {
  int weight = 50;
  int age = 25;
  int height = 180;
  bool ismale = true;
  bool isslect = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.background,
        title: Text(
          'Bmindex',
          style: TextStyle(
            color: Appcolors.Whait,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      backgroundColor: Appcolors.background,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            gender(),
            SizedBox(height: 15),
            Expanded(child: _height()),
            SizedBox(height: 15),
            weight_And_age(),
            SizedBox(height: 15),
            Calculat(context),
          ],
        ),
      ),
    );
  }

  InkWell Calculat(BuildContext context) {
    return InkWell(
      onTap: () {
        double result = weight / (height * height) * 10000;
        String stets = Stets(result: result).getStatus();
        Color statscolor = Stets(result: result).getStatscolor();

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Result(result: result, statscolor: statscolor, stets: stets,),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Appcolors.ActiveColor,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Calculate',
              style: TextStyle(
                color: Appcolors.Whait,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded gender() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Appcolors.background,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Card_gender(
              icon: Icons.male,
              isslect: isslect,
              text: 'male',
              ontap: () {
                setState(() {
                  isslect = true;
                });
              },
            ),
            SizedBox(width: 15),
            Card_gender(
              icon: Icons.female,
              isslect: !isslect,
              text: 'female',
              ontap: () {
                setState(() {
                  isslect = false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Expanded weight_And_age() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Appcolors.background,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Card_count(
              text: 'weight',
              value: weight,
              on_Add: () {
                setState(() {
                  weight++;
                });
              },
              on_remove: () {
                setState(() {
                  weight--;
                });
              },
            ),
            SizedBox(width: 15),
            Card_count(
              text: 'age',
              value: age,
              on_Add: () {
                setState(() {
                  age++;
                });
              },
              on_remove: () {
                setState(() {
                  age--;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Container _height() {
    return Container(
      decoration: BoxDecoration(
        color: Appcolors.CardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Height',
                  style: TextStyle(
                    color: Appcolors.Whait,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            //Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '$height',
                  style: TextStyle(
                    color: Appcolors.Whait,
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(width: 3),
                Text(
                  'cm',
                  style: TextStyle(
                    color: Appcolors.Whait,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Slider(
              value: height.toDouble(),
              min: 80,
              max: 220,
              activeColor: Appcolors.ActiveColor,
              inactiveColor: Appcolors.grey,
              onChanged: (value) {
                setState(() {
                  height = value.toInt();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
