import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar appBar(){
  return AppBar(
    backgroundColor: const Color(0xff111416),
    elevation: 0,
    leading: GestureDetector(
      onTap: (){

      },
      child: Container(
        width: 20,
        height: 20,
        padding: const EdgeInsets.all(8),
        margin:const EdgeInsets.all(10) ,
        decoration: BoxDecoration(
            color:const Color(0xff1c2125),
            borderRadius: BorderRadius.circular(10)
        ),
        child: SvgPicture.asset("lib/presentation/assets/icons/dot-grid-svgrepo-com.svg" , color: const Color(0xffe4e9eb)),
      ),
    ),
    actions: [
      Row(
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Welcome Back" , style: TextStyle(
                  color: Color(0xfffdfdfd),
                  fontSize: 13,
                  fontWeight: FontWeight.w200
              )),
              Text("Alex Northam" , style: TextStyle(
                  color: Color(0xfffdfdfd),
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),)
            ],
          ),
          Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.only(left: 8 , right: 10),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xff1c2125)
            ),
            child: SvgPicture.asset("lib/presentation/assets/icons/startup-rocket-svgrepo-com.svg", fit: BoxFit.fill, ),
          )  ,
        ],
      )
    ],
  );
}