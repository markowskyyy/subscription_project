import 'package:flutter/material.dart';
import 'package:test_app/styles.dart';

Widget BuyButton ({required func}) {
  return GestureDetector(
    onTap: (){
      func();
    },
    child: Container(
      height: 56,
      margin: const EdgeInsets.symmetric(horizontal: 36),
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        gradient: purpleGradient
      ),
      child: const Text("Купить", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),),
    ),
  );
}