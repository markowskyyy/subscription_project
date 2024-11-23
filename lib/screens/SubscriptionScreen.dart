import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/widgets/%20BuyButton.dart';
import '../styles.dart';
import '../widgets/BottomBarWidget.dart';
import '../widgets/SubscriptionWidget.dart';


class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {

  var indexOfSubsctiptionWidgets = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const Positioned(
              top: 20, left: 0,
              child: Image(image: AssetImage("lib/assets/left_purple_circle.png"))
            ),
            const Positioned(
              top: 280, right: 0,
              child: Image(image: AssetImage("lib/assets/right_purple_circle.png"))
            ),

            Column(
              children: [
                const SizedBox(height: 72,),
                Row(
                  children: [
                    const SizedBox(width: 16,),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset("lib/assets/back_button.svg"),
                    ),
                  ],
                ),
                const SizedBox(height: 4,),
                Text(
                  "Выберите подписку",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20,
                      shadows: <Shadow>[
                        Shadow(
                          offset: const Offset(0.0, 4.0),
                          blurRadius: 12.0,
                          color: colorTextShadow,
                        ),
                      ],
                  ),
                ),
                const SizedBox(height: 64,),
                SubscriptionWidget(
                  func: (){
                    setState(() { indexOfSubsctiptionWidgets = 0; });
                  },
                  widgetIsChoosen: indexOfSubsctiptionWidgets == 0,
                  title: "1 месяц",
                  price: "1000р",
                  profitable: false,
                ),
                const SizedBox(height: 12,),
                SubscriptionWidget(
                  func: (){ setState(() { indexOfSubsctiptionWidgets = 1; }); },
                  widgetIsChoosen: indexOfSubsctiptionWidgets == 1,
                  title: "6 месяцев",
                  price: "10 000р",
                  priceWithoutDiscount: "12000р",
                  listOfContent: ["что входит", "что входит", "что входит", "что входит", "что входит", "что входит"],
                  profitable: true,
                ),
                const SizedBox(height: 24,),
                BuyButton(func: (){}),
                const SizedBox(height: 96,),
                BottomBarWigdet(
                  termsFunc: (){},
                  privacyFunc: (){},
                  purchaseFunc: (){},
                ),
                const SizedBox(height: 28,),
              ],
            )
          ],
        ),
      ),
    );
  }
}

