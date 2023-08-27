

import 'package:flutter/cupertino.dart';
import 'package:health_tracker/presentation/home/widgets/CustomCurve.dart';

Container heartBeatBox(String elevatedHeartRate , String elevatedCondition , String condition , BuildContext context) {
  Size size = MediaQuery.of(context).size ;
  return  Container(
      height: 200,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
          color: const Color(0xff1a1e21) ,
          borderRadius: BorderRadius.circular(20)
      ),
      child:  Stack(
        children : [
          CustomPaint(
            painter: CustomCurve(),
            size: Size(size.width , 200),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    elevatedHeartRate,
                    style: const TextStyle(
                        color: Color(0xfffdfdfd),
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    elevatedCondition,
                    style: const TextStyle(
                        color:  Color(0xff797c7f),
                        fontWeight: FontWeight.w300,
                        fontSize: 14
                    ),
                  )
                ],
              ),
              Text(
                  condition,
                  style: const TextStyle(
                      color:  Color(0xfffdfdfd),
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )
              )
            ],
          ),

        ]
      )

  );
}
