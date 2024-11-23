import 'package:flutter/material.dart';
import 'package:test_app/styles.dart';

class BottomBarWigdet extends StatefulWidget {
  final Function termsFunc;
  final Function privacyFunc;
  final Function purchaseFunc;
  BottomBarWigdet({Key? key, required this.termsFunc, required this.privacyFunc, required this.purchaseFunc}) : super(key: key);

  @override
  State<BottomBarWigdet> createState() => _BottomBarWigdetState();
}

class _BottomBarWigdetState extends State<BottomBarWigdet> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(height: 28,),
        GestureDetector(
          onTap: (){
            widget.termsFunc();
          },
          child: Text("terms of use", style: bottomButtonTextStyle),
        ),
        GestureDetector(
          onTap: (){
            widget.privacyFunc();
          },
          child: Text("policy privacy", style: bottomButtonTextStyle),
        ),
        GestureDetector(
          onTap: (){
            widget.purchaseFunc();
          },
          child: Container(
            height: 36,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: colorViolet.withOpacity(0.1),
            ),
            child: Text("Restore purchase", style: bottomButtonTextStyle),
          ),
        ),
        const SizedBox(height: 28,),
      ],
    );
  }
}
