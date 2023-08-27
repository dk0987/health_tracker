import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_tracker/domain/modal/AdditionalInfo.dart';
import 'package:health_tracker/presentation/home/widgets/AdditionalInfo.dart';
import 'package:health_tracker/presentation/home/widgets/AppBar.dart';
import 'package:health_tracker/presentation/home/widgets/Day.dart';
import 'package:health_tracker/presentation/home/widgets/HeartBeatBox.dart';

import '../../domain/modal/DayModal.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  
  List<DayModal> days = [];
  int selectedIndex = 4;

   List<AdditionalInfo> additionalInfo = [];
   int selectedInfo = 3;

  void _getDays(){
    days = DayModal.getAllDays();
  }

   void _getAdditionalInfo(){
     additionalInfo = AdditionalInfo.getAllAdditionalInfo();
   }

  @override
  Widget build(BuildContext context) {
    _getDays();
    _getAdditionalInfo();
    return Scaffold(
      appBar: appBar(),
      body: Container(
        decoration: const BoxDecoration(
        color: Color(0xff111416),
        ),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 25)),
            Container(
              height: 120,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              child: ListView.separated(
                itemCount: days.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context , index) => const SizedBox(width: 25),
                itemBuilder: (context , index){
                  return day(index + 1 == selectedIndex, days[index]);
                },
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 15)),
           heartBeatBox(
             "5min",
             "Increased HeartBeat",
             "Hearth",
             context
           ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 10 , vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      additionalInfoBox(additionalInfo[0] , selectedInfo == 0),
                      additionalInfoBox(additionalInfo[1] , selectedInfo == 1),
                    ],
                  ),
                  Row(
                    children: [
                      additionalInfoBox(additionalInfo[2] , selectedInfo == 2),
                      additionalInfoBox(additionalInfo[3] , selectedInfo == 3),
                    ],
                  )
                ],
              ),
            )
          ],
        )
    ),

    );
  }
}


