import 'package:flutter/material.dart';

import '../widgets/responsive.dart';
import 'editprofile.dart';

class StampPage extends StatelessWidget {
  const StampPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> newData = [
      "20201 / 11 / 18",
      "20201 / 11 / 17",
      "20201 / 11 / 16",
      "20201 / 11 / 13",
      "20201 / 11 / 12",
    ];
    return Scaffold(
      backgroundColor: const Color(0xffA8B1FF),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: R.sh(10, context), horizontal: R.sw(20, context)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                              backgroundColor: const Color(0xff949EFF),
                              radius: R.sw(23, context),
                              child: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Colors.white,
                                size: R.sw(25, context),
                              )),
                        ),
                        Text(
                          "スタンプカード詳細",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: R.sw(14, context),
                              fontWeight: FontWeight.normal),
                        ),
                        Icon(
                          Icons.do_not_disturb_on_outlined,
                          color: Colors.white,
                          size: R.sw(30, context),
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: R.sh(20, context)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mer キッチン",
                            style: TextStyle(
                                fontSize: R.sw(16, context),
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: "現在の獲得数",
                              style: TextStyle(
                                  fontSize: R.sw(14, context),
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                            TextSpan(
                                text: "30",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: R.sw(28, context),
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: "個",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: R.sw(16, context),
                                    fontWeight: FontWeight.bold)),
                          ])),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: R.sh(670, context),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(R.sw(30, context)),
                        topLeft: Radius.circular(R.sw(30, context))),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.only(top: R.sw(20, context)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: R.sw(20, context)),
                        child: SizedBox(
                          height: R.sh(220, context),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 2,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: R.sh(199, context),
                                width: R.sw(300, context),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        R.sw(20, context)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0xFFEDE6E6),
                                        offset: Offset(
                                          3,
                                          3,
                                        ),
                                        blurRadius: 7,
                                        spreadRadius: 2,
                                      ), //Box
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GridView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: 15,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 5),
                                    itemBuilder: (context, index) => Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/images/Star 1.png",
                                            width: R.sw(42.97, context),
                                            height: R.sh(42.97, context),
                                          ),
                                          Icon(
                                            Icons.check_rounded,
                                            color: Colors.white,
                                            size: R.sw(20, context),
                                          )
                                        ]),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: R.sw(280, context)),
                        child: Text(
                          "2 / 2枚目",
                          style: TextStyle(
                              fontSize: R.sw(12, context),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 15,
                          left: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "スタンプ獲得履歴",
                                style: TextStyle(
                                    fontSize: R.sw(14, context),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: R.sh(320, context),
                              child: ListView.separated(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const EditProfile(),
                                          ));
                                    },
                                    title: Text(
                                      newData[index],
                                      style: TextStyle(
                                          fontSize: R.sw(12, context),
                                          color: const Color(0xffB5B5B5)),
                                    ),
                                    subtitle: Text(
                                      "スタンプを獲得しました。",
                                      style: TextStyle(
                                          color: const Color(0xff454545),
                                          fontSize: R.sw(14, context)),
                                    ),
                                    trailing: Text(
                                      "1 個",
                                      style: TextStyle(
                                          fontSize: R.sw(14, context),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const Divider();
                                },
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
