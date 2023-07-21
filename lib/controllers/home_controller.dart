import 'package:get/get.dart';

import '../models/home_card_model.dart';

class HomeController extends GetxController {
  RxList<HomeCardModel> homeCardData = (List<HomeCardModel>.of([
    HomeCardModel(image: "assets/images/firstimg.png", isFav: RxBool(false)),
    HomeCardModel(image: "assets/images/secondimg.png", isFav: RxBool(false)),
  ])).obs;

  RxList<String> day =
      (List<String>.of(["木", "金", "土", "日", "月", "火", "水"])).obs;
  RxList<String> date =
      (List<String>.of(['26', '27', '28', '29', '30', '31', '1'])).obs;
  var calenderIndex = 0.obs;
  var selectScreen = 0.obs;
}
