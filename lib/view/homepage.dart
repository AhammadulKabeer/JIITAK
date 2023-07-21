import 'dart:core';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/view/stamppage.dart';

import '../controllers/home_controller.dart';
import '../widgets/responsive.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            primary: true,
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 0,
            scrolledUnderElevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: R.sw(241, context),
                    height: R.sh(33, context),
                    decoration: BoxDecoration(
                        color: const Color(0xffF7F7F7),
                        borderRadius: BorderRadius.circular(R.sw(20, context))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: R.sh(6, context),
                          horizontal: R.sw(18, context)),
                      child: SizedBox(
                        height: R.sh(10, context),
                        width: R.sw(50, context),
                        child: Text(
                          "北海道, 札幌市",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: R.sw(12, context),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    )),
                Image.asset(
                  "assets/images/Filter_icon.png",
                  width: R.sw(28, context),
                ),
                Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.red,
                  size: R.sw(28, context),
                )
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(R.sh(50, context)),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: R.sh(15, context)),
                child: Ink(
                  width: MediaQuery.of(context).size.width,
                  height: R.sh(33, context),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xffFAAA14),
                            Color(0xffFFD78D),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: [0, .7])),
                  child: Center(
                    child: Text(
                      "2022年 5月 26日（木）",
                      style: TextStyle(
                          fontSize: R.sw(14, context),
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
            ),
          ),
          /////////////// //sliver box adapter ////////////////
          SliverToBoxAdapter(
            child: Column(
              children: [
                Obx(() {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: R.sw(15, context),
                        vertical: R.sh(10, context)),
                    child: SizedBox(
                      height: R.sh(70, context),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.day.length,
                        padding: EdgeInsets.zero,
                        separatorBuilder: (context, index) =>
                            SizedBox(width: R.sw(5, context)),
                        itemBuilder: (context, index) {
                          return Obx(
                            () => GestureDetector(
                              onTap: () {
                                controller.calenderIndex.value = index;
                              },
                              child: Container(
                                width: R.sw(44, context),
                                height: R.sh(67, context),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(R.sw(9, context)),
                                    color:
                                        controller.calenderIndex.value == index
                                            ? const Color(0xffFAAA14)
                                            : const Color(0xFFF2F0F0)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: R.sh(30, context),
                                      width: R.sw(50, context),
                                      child: Center(
                                        child: Text(
                                          controller.day[index],
                                          style: TextStyle(
                                              fontSize: R.sw(17, context),
                                              fontWeight: FontWeight.bold,
                                              color: controller.calenderIndex
                                                          .value ==
                                                      index
                                                  ? Colors.white
                                                  : Colors.black),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: R.sh(30, context),
                                      width: R.sw(50, context),
                                      child: Center(
                                        child: Text(
                                          controller.date[index],
                                          style: TextStyle(
                                            fontSize: R.sw(17, context),
                                            fontWeight: FontWeight.bold,
                                            color: controller
                                                        .calenderIndex.value ==
                                                    index
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                }),
                Obx(
                  () => ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.homeCardData.length,
                    shrinkWrap: true,
                    separatorBuilder: (context, index) =>
                        SizedBox(height: R.sh(20, context)),
                    itemBuilder: (context, index) => Obx(
                      () => GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const StampPage(),
                              ));
                        },
                        child: Column(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft:
                                          Radius.circular(R.sw(20, context)),
                                      topRight:
                                          Radius.circular(R.sw(20, context))),
                                  child: SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width - 40,
                                    height: R.sh(195, context),
                                    child: Image.asset(
                                      controller.homeCardData[index].image,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: R.sh(10, context),
                                  left: R.sw(-10, context),
                                  child: Container(
                                    width: R.sw(74, context),
                                    height: R.sh(20, context),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            R.sw(2.43, context)),
                                        color: const Color(0xffFF6262)),
                                    child: Center(
                                      child: Text(
                                        "本日まで",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: R.sw(10, context),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width - 40,
                              padding: EdgeInsets.symmetric(
                                  horizontal: R.sw(20, context),
                                  vertical: R.sh(10, context)),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft:
                                          Radius.circular(R.sw(20, context)),
                                      bottomRight:
                                          Radius.circular(R.sw(20, context))),
                                  color: const Color(0xffFFFFFF)),
                              child: SizedBox(
                                width: R.sw(320, context),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "介護有料老人ホームひまわり倶楽部の介護職／ヘ",
                                      style: TextStyle(
                                          fontSize: R.sw(13, context),
                                          color: const Color(0xff303030),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "ルパー求人（パート／バイト）",
                                      style: TextStyle(
                                          fontSize: R.sw(13, context),
                                          color: const Color(0xff303030),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Center(
                                            child: Text(
                                              "介護付き有料老人ホーム",
                                              style: TextStyle(
                                                  fontSize: R.sw(10, context),
                                                  color:
                                                      const Color(0xffFAAA14),
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Text(
                                            "¥ 6,000",
                                            style: TextStyle(
                                                fontSize: R.sw(16, context),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "5月 31日（水）08 : 00 ~ 17 : 00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: R.sw(12, context)),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: R.sh(2, context)),
                                      child: Text(
                                        "北海道札幌市東雲町3丁目916番地17号",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: R.sw(12, context)),
                                      ),
                                    ),
                                    Text(
                                      "交通費 300円",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: R.sw(12, context)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "住宅型有料老人ホームひまわり倶楽部",
                                          style: TextStyle(
                                              fontSize: R.sw(12, context),
                                              color: const Color(0xff303030)
                                                  .withOpacity(0.3)),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            controller.homeCardData[index].isFav
                                                    .value =
                                                !controller.homeCardData[index]
                                                    .isFav.value;
                                          },
                                          child: controller.homeCardData[index]
                                                  .isFav.value
                                              ? Icon(
                                                  Icons.favorite,
                                                  color:
                                                      const Color(0xFFF72A3B),
                                                  size: R.sw(30, context),
                                                )
                                              : Icon(
                                                  Icons.favorite_border,
                                                  color: const Color(0xff303030)
                                                      .withOpacity(0.3),
                                                  size: R.sw(30, context),
                                                ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: R.sh(60, context)),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: R.sw(10, context),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: R.sw(40, context),
                        onPressed: () {
                          controller.selectScreen.value = 0;
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              color: controller.selectScreen.value == 0
                                  ? Colors.amber
                                  : Colors.grey,
                            ),
                            SizedBox(
                              height: R.sh(20, context),
                              width: R.sw(50, context),
                              child: Center(
                                child: Text(
                                  "さがす",
                                  style: TextStyle(
                                    fontSize: R.sw(8, context),
                                    color: controller.selectScreen.value == 0
                                        ? Colors.amber
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: R.sw(40, context),
                        onPressed: () {
                          // setState(() {
                          controller.selectScreen.value = 1;
                          // });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/Business-office bag.png",
                              color: controller.selectScreen.value == 1
                                  ? Colors.amber
                                  : Colors.grey,
                            ),
                            SizedBox(
                              height: R.sh(20, context),
                              width: R.sw(50, context),
                              child: Center(
                                child: Text(
                                  "お仕事",
                                  style: TextStyle(
                                    fontSize: R.sw(8, context),
                                    color: controller.selectScreen.value == 1
                                        ? Colors.amber
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  //!RIGHT NAV BAR
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MaterialButton(
                        minWidth: R.sw(40, context),
                        onPressed: () {
                          controller.selectScreen.value = 2;
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/Chat-typing.png",
                              color: controller.selectScreen.value == 2
                                  ? Colors.amber
                                  : Colors.grey,
                            ),
                            SizedBox(
                              height: R.sh(20, context),
                              width: R.sw(50, context),
                              child: Center(
                                child: Text(
                                  "チャット",
                                  style: TextStyle(
                                    fontSize: R.sw(8, context),
                                    color: controller.selectScreen.value == 2
                                        ? Colors.amber
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: R.sw(40, context),
                        onPressed: () {
                          controller.selectScreen.value = 3;
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/Users-account.png",
                              color: controller.selectScreen.value == 3
                                  ? Colors.amber
                                  : Colors.grey,
                            ),
                            SizedBox(
                              height: R.sh(20, context),
                              width: R.sw(50, context),
                              child: Center(
                                child: Text(
                                  "マイページ",
                                  style: TextStyle(
                                    fontSize: R.sw(8, context),
                                    color: controller.selectScreen.value == 3
                                        ? Colors.amber
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Positioned(
                top: R.sh(-35, context),
                child: Column(
                  children: [
                    Container(
                      width: R.sw(65, context),
                      height: R.sw(65, context),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(colors: [
                            Color(0xffEDA827),
                            Color(0xffFFDA96),
                          ])),
                      child: Image.asset(
                        "assets/images/scnn.png",
                        cacheWidth: 40,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: R.sh(20, context),
                      width: R.sw(50, context),
                      child: Center(
                        child: Text(
                          "マイページ",
                          style: TextStyle(
                            fontSize: R.sw(8, context),
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(
          Icons.location_on_outlined,
          color: Colors.black,
          size: R.sw(30, context),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
