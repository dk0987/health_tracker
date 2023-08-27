import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_tracker/domain/modal/AdditionalInfo.dart';

Container additionalInfoBox(AdditionalInfo additionalInfo , bool selected ){
  return Container(
    height: 140,
    width: 160,
    padding: const EdgeInsets.all(15),
    margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(
        color: selected ? const Color(0xfffdfdfd) : const Color(0xff1a1e21),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                additionalInfo.infoAbout ,
                style:  TextStyle(
                    color:  selected ? const Color(0xff111416) : const Color(0xff797c7f),
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                )
            ),
            SizedBox(
              height: 25,
              width: 25,
              child: SvgPicture.asset(additionalInfo.iconUrl , fit: BoxFit.cover, color: selected ? const Color(0xff111416) : const Color(0xfffdfdfd)),
            )
          ],
        ),
        const SizedBox(height: 20),
        Text(
          additionalInfo.infoDetail ,
          style: TextStyle(
            color: selected ? const Color(0xff111416) : const Color(0xfffdfdfd),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}