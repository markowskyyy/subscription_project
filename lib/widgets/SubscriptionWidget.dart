import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:test_app/styles.dart';

Widget SubscriptionWidget ({
  required Function func,
  required bool widgetIsChoosen,
  required String title,
  required String price,
  priceWithoutDiscount, // String
  listOfContent, // List<String>
  profitable, // bool
}) {
  return GestureDetector(
    onTap: (){
      func();
    },
    child: Stack(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 28),
          margin: EdgeInsets.only(left: 36, right: 36, top: profitable ? 18 : 0),
          decoration: BoxDecoration(
            color: widgetIsChoosen ? colorBlackTransporent : colorWhiteTransporent,
            borderRadius: BorderRadius.circular(30),
            border: widgetIsChoosen ? GradientBoxBorder(width: 1, gradient: borderGradient) : null,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 28,
                    height: 28,
                    padding: const EdgeInsets.only(top: 10, left: 7, right: 7, bottom: 7),
                    decoration: BoxDecoration(
                      color: widgetIsChoosen ? null : Colors.transparent,
                      shape: BoxShape.circle,
                      gradient: widgetIsChoosen ? purpleGradient : null,
                      border: widgetIsChoosen ? null : Border.all(color: Colors.white, width: 1),
                    ),
                    child: widgetIsChoosen ? SvgPicture.asset("lib/assets/check_mark.svg") : null,
                  ),
                  SizedBox(width: 24,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: textStyle15,),
                      SizedBox(height: 4,),
                      Text("Описание", style: textStyle12,),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(price, style: textStyle16,),
                      if(priceWithoutDiscount != null) Text(priceWithoutDiscount, style: textStyleLineThrough12,)
                    ],
                  )
                ],
              ),
              SizedBox(height: 36,),
              if (listOfContent != null) ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        width: 7, // Размер точки
                        height: 7,
                        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle,),
                      ),
                      SizedBox(width: 16,),
                      Text(listOfContent[index], style: TextStyle(color: Colors.white),),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 8,);
                },
                itemCount: (listOfContent as List).length,
              )
            ],
          ),
        ),
        if (profitable == true) Positioned(
          right: 24,
          top: widgetIsChoosen ? 2 : 0,
          child: Container(
            height: 36,
            width: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            alignment: Alignment.center,
            child: Text("Выгодно", style: TextStyle(color: colorViolet, fontSize: 12, fontWeight: FontWeight.w500),),
          ),
        )
      ],
    ),
  );
}