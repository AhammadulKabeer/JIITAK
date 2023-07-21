import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../data/checkcontroller.dart';
import '../widgets/responsive.dart';
import '../widgets/rich_text.dart';
import '../widgets/texts.dart';

List<String> img3 = [
  "assets/images/Input3.png",
  "assets/images/Input4.png",
  "assets/images/Input5.5.png",
];

List<String> img4 = [
  "assets/images/input6.png",
  "assets/images/inpu7.png",
  "assets/images/input8.png",
];
List<String> img5 = [
  "assets/images/ice1.png",
  "assets/images/ice2.png",
  "assets/images/ice3.png",
];
const List<String> list = <String>[
  '10 : 00',
  '20 : 00',
  '11 : 00',
  '15 : 00',
  '25 : 00',
];

dynamic drobdownvalue = list.first;
dynamic drobdownvalue2 = list[1];
dynamic drobdownvalue3 = list[2];
dynamic drobdownvalue4 = list[3];

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: R.sh(20, context),
                      right: R.sw(20, context),
                      left: R.sw(20, context)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: R.sw(20, context),
                        backgroundColor:
                            const Color(0xff8C817B).withOpacity(0.1),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: R.sw(20, context),
                              color: Color(0xffB8B8B8),
                            )),
                      ),
                      Text(
                        "店舗プロフィール編集",
                        style: TextStyle(
                            fontSize: R.sw(15, context),
                            fontWeight: FontWeight.w500),
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Icon(
                            Icons.notifications_outlined,
                            size: R.sw(30, context),
                          ),
                          Positioned(
                            right: R.sw(-2, context),
                            top: R.sw(3, context),
                            child: CircleAvatar(
                              radius: R.sw(9, context),
                              backgroundColor: Color(0xffEE7D42),
                              child: Center(
                                child: Text(
                                  "99+",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: R.sw(9, context)),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: R.sw(30, context),
                      vertical: R.sh(10, context)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Richtext(
                          text: "店舗名",
                        ),
                        CostomTextfield(
                          controller: TextEditingController(text: "Mer キッチン"),
                        ),
                        Richtext(text: "代表担当者名"),
                        CostomTextfield(
                          controller: TextEditingController(text: "林田　絵梨花"),
                        ),
                        Richtext(text: "店舗電話番号"),
                        CostomTextfield(
                          controller:
                              TextEditingController(text: "123 - 4567 8910"),
                        ),
                        Richtext(text: "店舗住所"),
                        CostomTextfield(
                          controller:
                              TextEditingController(text: "大分県豊後高田市払田791-13"),
                        ),
                        Ink(
                          width: R.sw(350, context),
                          height: R.sh(220, context),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Image.asset(
                            "assets/images/snazzy-image (1) 1.png",
                            fit: BoxFit.fill,
                            // height: R.sh(219, context),
                            // width: R.sw(340, context),
                          ),
                        ),
                        Richtext(
                          text: "店舗外観",
                          text2: "（最大3枚まで）",
                        ),
                        SizedBox(
                          height: R.sh(110, context),
                          width: R.sw(400, context),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/Input1.png",
                                height: R.sh(91, context),
                                width: R.sw(91, context),
                              ),
                              Image.asset(
                                "assets/images/Input1.png",
                                height: R.sh(91, context),
                                width: R.sw(91, context),
                              ),
                              SizedBox(
                                width: R.sw(80, context),
                                height: R.sh(80, context),
                                child: DottedBorder(
                                  color: const Color(0xffE8E8E8),
                                  strokeWidth: R.sw(2, context),
                                  dashPattern: const [
                                    4,
                                    4,
                                  ],
                                  child: Container(
                                    width: R.sw(91, context),
                                    height: R.sh(91, context),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(80),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Image.asset(
                                              "assets/images/gallery.png",
                                              width: R.sw(30, context),
                                              height: R.sh(30, context),
                                              color: Color(0xff9C9896),
                                            )),
                                        Text(
                                          "写真を追加",
                                          style: TextStyle(
                                            color: Color(0xff9C9896),
                                            fontSize: R.sw(12, context),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Richtext(
                          text: "店舗内観",
                          text2: "（1枚〜3枚ずつ追加してください）",
                        ),
                        SizedBox(
                          height: R.sh(110, context),
                          width: R.sw(400, context),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) => Image.asset(
                              "assets/images/Input2.png",
                              height: R.sh(91, context),
                              width: R.sw(91, context),
                            ),
                          ),
                        ),
                        Richtext(
                          text: "料理写真",
                          text2: "（1枚〜3枚ずつ追加してください）",
                        ),
                        SizedBox(
                          height: R.sh(110, context),
                          width: R.sw(400, context),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) => Image.asset(
                              img3[index],
                              height: R.sh(91, context),
                              width: R.sw(91, context),
                            ),
                          ),
                        ),
                        Richtext(
                          text: "メニュー写真",
                          text2: "（1枚〜3枚ずつ追加してください）",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 10),
                          child: SizedBox(
                            height: R.sh(94, context),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 3,
                              itemBuilder: (context, index) => Image.asset(
                                img4[index],
                                height: R.sh(91, context),
                                width: R.sw(91, context),
                              ),
                            ),
                          ),
                        ),
                        Richtext(text: "営業時間"),
                        Padding(
                          padding: EdgeInsets.only(
                              top: R.sh(5, context), bottom: R.sh(20, context)),
                          child: Row(
                            children: [
                              Container(
                                width: R.sw(124, context),
                                height: R.sh(38, context),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(R.sw(5, context)),
                                    border: Border.all(
                                        color: const Color(0xffE8E8E8))),
                                child: DropdownButton(
                                    underline: const SizedBox(),
                                    padding: EdgeInsets.all(R.sw(5, context)),
                                    icon: Padding(
                                      padding: EdgeInsets.only(
                                          left: R.sw(30, context)),
                                      child: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        color: Color(0xffC7C4C0),
                                        size: R.sw(25, context),
                                      ),
                                    ),
                                    value: drobdownvalue,
                                    style: TextStyle(
                                        color: Color(0xff454545),
                                        fontSize: R.sw(16, context)),
                                    items: list.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        drobdownvalue = value;
                                      });
                                    }),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "~",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff4B4948),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Container(
                                width: R.sw(124, context),
                                height: R.sh(38, context),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      R.sw(5, context),
                                    ),
                                    border: Border.all(
                                        color: const Color(0xffE8E8E8))),
                                child: DropdownButton(
                                    underline: const SizedBox(),
                                    padding: EdgeInsets.all(
                                      R.sw(5, context),
                                    ),
                                    icon: Padding(
                                      padding: EdgeInsets.only(
                                        left: R.sw(30, context),
                                      ),
                                      child: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        color: Color(0xffC7C4C0),
                                        size: R.sw(25, context),
                                      ),
                                    ),
                                    value: drobdownvalue2,
                                    style: TextStyle(
                                      color: Color(0xff454545),
                                      fontSize: R.sw(16, context),
                                    ),
                                    items: list.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        drobdownvalue = value;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        Richtext(text: "ランチ時間"),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 20),
                          child: Row(
                            children: [
                              Container(
                                width: R.sw(124, context),
                                height: R.sh(38, context),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(R.sw(5, context)),
                                    border: Border.all(
                                        color: const Color(0xffE8E8E8))),
                                child: DropdownButton(
                                    underline: const SizedBox(),
                                    padding: EdgeInsets.all(R.sw(5, context)),
                                    icon: Padding(
                                      padding: EdgeInsets.only(
                                          left: R.sw(30, context)),
                                      child: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        color: Color(0xffC7C4C0),
                                        size: R.sw(25, context),
                                      ),
                                    ),
                                    value: drobdownvalue3,
                                    style: TextStyle(
                                        color: Color(0xff454545),
                                        fontSize: R.sw(16, context)),
                                    items: list.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        drobdownvalue = value;
                                      });
                                    }),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "~",
                                  style: TextStyle(
                                      fontSize: R.sw(20, context),
                                      color: Color(0xff4B4948),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Container(
                                width: R.sw(124, context),
                                height: R.sh(38, context),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(R.sw(5, context)),
                                    border: Border.all(
                                        color: const Color(0xffE8E8E8))),
                                child: DropdownButton(
                                    underline: const SizedBox(),
                                    padding: EdgeInsets.all(R.sw(5, context)),
                                    icon: Padding(
                                      padding: EdgeInsets.only(
                                          left: R.sw(30, context)),
                                      child: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        color: Color(0xffC7C4C0),
                                        size: R.sw(25, context),
                                      ),
                                    ),
                                    value: drobdownvalue4,
                                    style: TextStyle(
                                        color: Color(0xff454545),
                                        fontSize: R.sw(16, context)),
                                    items: list.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        drobdownvalue = value;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        Richtext(text: "定休日"),

                        ///we could use check box for getting the value when tappped///
                        SizedBox(
                          width: R.sw(300, context),
                          height: R.sh(150, context),
                          child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.all(R.sw(5, context)),
                            itemCount: checklist.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4),
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Image.asset(checklist[index].img!),
                                  Padding(
                                    padding: EdgeInsets.all(R.sw(8, context)),
                                    child: Text(checklist[index].txt!),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                        Richtext(text: "料理カテゴリー"),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: R.sw(8, context)),
                          child: Container(
                            width: R.sw(194, context),
                            height: R.sh(38, context),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(R.sw(5, context)),
                                border:
                                    Border.all(color: const Color(0xffE8E8E8))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "料理カテゴリー選択",
                                  style: TextStyle(
                                      fontSize: R.sw(16, context),
                                      color: Color(0xffC7C4C0)),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Color(0xffC7C4C0),
                                  size: R.sw(25, context),
                                )
                              ],
                            ),
                          ),
                        ),
                        Richtext(text: "予算"),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: R.sh(3, context)),
                          child: Row(
                            children: [
                              Container(
                                width: R.sw(124, context),
                                height: R.sh(38, context),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(R.sw(5, context)),
                                    border: Border.all(
                                        color: const Color(0xffE8E8E8))),
                                child: Padding(
                                  padding: EdgeInsets.all(R.sw(3, context)),
                                  child: Text(
                                    "¥ 1,000",
                                    style: TextStyle(
                                        fontSize: R.sw(16, context),
                                        color: Color(0xff454545)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(R.sw(8, context)),
                                child: Text(
                                  "~",
                                  style: TextStyle(
                                      fontSize: R.sw(20, context),
                                      color: Color(0xff4B4948),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Container(
                                width: R.sw(124, context),
                                height: R.sh(38, context),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(R.sw(5, context)),
                                    border: Border.all(
                                        color: const Color(0xffE8E8E8))),
                                child: Padding(
                                  padding: EdgeInsets.all(R.sw(3, context)),
                                  child: Text(
                                    "¥ 2,000",
                                    style: TextStyle(
                                        fontSize: R.sw(16, context),
                                        color: Color(0xff454545)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Richtext(text: "キャッチコピー"),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: R.sh(8, context)),
                          child: Container(
                              width: R.sw(335, context),
                              height: R.sh(38, context),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(R.sw(5, context)),
                                  border: Border.all(
                                      color: const Color(0xffE8E8E8))),
                              child: Padding(
                                padding: EdgeInsets.all(R.sw(3, context)),
                                child: Text(
                                  "美味しい！リーズナブルなオムライスランチ！",
                                  style: TextStyle(
                                      fontSize: R.sw(15, context),
                                      color: Color(0xff454545)),
                                ),
                              )),
                        ),
                        Richtext(text: "座席数"),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: R.sh(8, context)),
                          child: Container(
                              width: R.sw(335, context),
                              height: R.sh(38, context),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(R.sw(5, context)),
                                  border: Border.all(
                                      color: const Color(0xffE8E8E8))),
                              child: Padding(
                                padding: EdgeInsets.all(R.sw(3, context)),
                                child: Text(
                                  "40席",
                                  style: TextStyle(
                                      fontSize: R.sw(16, context),
                                      color: Color(0xff454545)),
                                ),
                              )),
                        ),
                        Richtext(text: "喫煙席"),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: R.sh(5, context)),
                          child: Row(
                            children: [
                              Image.asset("assets/images/check.png"),
                              Text(
                                "有",
                                style: TextStyle(
                                    fontSize: R.sw(16, context),
                                    color: Color(0xff4B4948)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: R.sw(50, context),
                                    right: R.sw(5, context)),
                                child: Image.asset("assets/images/wrong.png"),
                              ),
                              Text(
                                "無",
                                style: TextStyle(
                                    fontSize: R.sw(16, context),
                                    color: Color(0xff4B4948)),
                              ),
                            ],
                          ),
                        ),
                        Richtext(text: "駐車場"),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: R.sh(5, context)),
                          child: Row(
                            children: [
                              Image.asset("assets/images/check.png"),
                              Text(
                                "有",
                                style: TextStyle(
                                    fontSize: R.sw(16, context),
                                    color: Color(0xff4B4948)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: R.sw(50, context),
                                    right: R.sw(5, context)),
                                child: Image.asset("assets/images/wrong.png"),
                              ),
                              Text(
                                "無",
                                style: TextStyle(
                                    fontSize: R.sw(16, context),
                                    color: Color(0xff4B4948)),
                              ),
                            ],
                          ),
                        ),
                        Richtext(text: "来店プレゼント"),
                        Row(
                          children: [
                            Image.asset("assets/images/check.png"),
                            Text(
                              "有（最大３枚まで）",
                              style: TextStyle(
                                  fontSize: R.sw(16, context),
                                  color: Color(0xff4B4948)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: R.sw(50, context),
                                  right: R.sw(5, context)),
                              child: Image.asset("assets/images/wrong.png"),
                            ),
                            Text(
                              "無",
                              style: TextStyle(
                                  fontSize: R.sw(16, context),
                                  color: Color(0xff4B4948)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: R.sh(5, context), bottom: R.sh(10, context)),
                          child: SizedBox(
                            height: R.sh(110, context),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 3,
                              itemBuilder: (context, index) => Stack(
                                children: [
                                  Image.asset(
                                    img5[index],
                                    fit: BoxFit.fill,
                                  ),
                                  Positioned(
                                      right: R.sw(20, context),
                                      top: R.sh(15, context),
                                      child: Image.asset(
                                          "assets/images/cross.png"))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Richtext(text: "来店プレゼント名"),
                        Padding(
                          padding: EdgeInsets.only(
                              top: R.sh(8, context), bottom: R.sh(40, context)),
                          child: Container(
                              width: R.sw(335, context),
                              height: R.sh(38, context),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(R.sw(5, context)),
                                  border: Border.all(
                                      color: const Color(0xffE8E8E8))),
                              child: Padding(
                                padding: EdgeInsets.all(R.sw(3, context)),
                                child: Text(
                                  "いちごクリームアイスクリーム, ジュース",
                                  style: TextStyle(
                                      fontSize: R.sw(16, context),
                                      color: Color(0xff454545)),
                                ),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: R.sw(335, context),
                            height: R.sh(46, context),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: const LinearGradient(
                                    colors: [
                                      Color(0xffEE7D42),
                                      Color(0xffFFC8AB),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    stops: [0, 1])),
                            child: Center(
                                child: Text(
                              "編集を保存",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: R.sw(14, context)),
                            )),
                          ),
                        )
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
