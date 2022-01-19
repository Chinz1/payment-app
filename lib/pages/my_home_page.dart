import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pay2/component/colors.dart';
import 'package:flutter_pay2/widgets/large_buttons.dart';
import 'package:flutter_pay2/widgets/text_size.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: h,
        child: Stack(
          children: [
            _headSection(),
            _listBills(),
            _payButtons(),
          ],
        ),
      ),
    );
  }

  _headSection() {
    return Container(
      height: 310,
      child: Stack(
        children: [
          _mainBackground(),
          _curveImageContainer(),
          _buttonContainer(),
        ],
      ),
    );
  }

  _buttonContainer() {
    return Positioned(
        right: 58,
        bottom: 15,
        child: GestureDetector(
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                image:
                    const DecorationImage(image: AssetImage("images/lines.png")),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 15,
                      offset: const Offset(0, 1),
                      color: const Color(0xFF11324d).withOpacity(0.2))
                ]),
          ),
        ));
  }

  _mainBackground() {
    return Positioned(
        bottom: 10,
        left: 0,
        child: Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/background.jpg"))),
        ));
  }

  _curveImageContainer() {
    return Positioned(
        left: 0,
        right: -2,
        bottom: 10,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("images/curve.jpg"))),
        ));
  }

  _listBills() {
    return Positioned(
      top: 320,
      left: 0,
      right: 0,
      bottom: 0,
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (_, index) {
              return Container(
                  margin: const EdgeInsets.only(top: 20, right: 20),
                  height: 130,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFFd8dbe0),
                            offset: Offset(1, 1),
                            blurRadius: 20.0,
                            spreadRadius: 10)
                      ]),
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, left: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          width: 3, color: Colors.grey),
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              AssetImage("images/brand1.png"))),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "KenGen Power",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: AppColor.mainColor,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "ID:846594",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: AppColor.idColor,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedText(
                                text: "Auto pay on 24th May 18",
                                color: AppColor.green),
                            const SizedBox(
                              height: 5,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 80,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: AppColor.selectiveBackground),
                                  child: Center(
                                    child: Text("Select",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColor.selectColor)),
                                  ),
                                ),
                                Expanded(child: Container()),
                                const Text("\$1248.00",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        color: AppColor.mainColor)),
                                Text("Due in 3 days",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: AppColor.idColor)),
                                const SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 5,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: AppColor.halfOval,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomLeft: Radius.circular(30))),
                            )
                          ],
                        )
                      ],
                    ),
                  ));
            }),
      ),
    );
  }

  _payButtons() {

    return const Positioned(
      bottom: 20,
      child: AppLargeButton(text: "Pay all bills", textColor: Colors.white,)
    );
  }
}
