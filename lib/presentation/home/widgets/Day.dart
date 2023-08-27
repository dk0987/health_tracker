
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_tracker/domain/modal/DayModal.dart';

Container day(bool selected , DayModal day){
  return Container(
    width: 50,
    decoration: BoxDecoration(
        color: selected ?  const Color(0xffd0fe6c): Colors.transparent,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: const Color(0xff1a1e21) , width: 1)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          day.day ,
          style:  TextStyle(
              color: selected ? const Color(0xff111416) : const Color(0xff797c7f),
              fontWeight: FontWeight.w400,
              fontSize: 16
          ),
        ),
        Container(
          width: 0.5,
          height: 25,
          decoration: BoxDecoration(
              color: selected ? const Color(0xff111416) : const Color(0xffd0fe6c)
          ),
        ),
        Text(
          day.date.toString() ,
          style: TextStyle(
              color: selected ? const Color(0xff111416) : const Color(0xfffdfdfd),
              fontWeight: FontWeight.bold,
              fontSize: 16
          ),
        ),
      ],
    ),
  );
}