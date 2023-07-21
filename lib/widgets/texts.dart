import 'package:flutter/material.dart';
import 'package:jiitak/widgets/responsive.dart';

class CostomTextfield extends StatelessWidget {
  final TextEditingController? controller;
  const CostomTextfield({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: R.sw(5, context), bottom: R.sw(20, context)),
      child: SizedBox(
        width: R.sw(335, context),
        // height: R.sh(38, context),
        child: TextField(
          textAlign: TextAlign.left,
          controller: controller,
          style: TextStyle(
              color: Color(0xff454545),
              fontSize: R.sw(16, context),
              fontWeight: FontWeight.normal),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
                left: R.sw(10, context), bottom: R.sh(10, context)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(R.sw(5, context)),
                borderSide: const BorderSide(color: Color(0xffE8E8E8))),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(R.sw(5, context)),
                borderSide: const BorderSide(color: Color(0xffE8E8E8))),
          ),
        ),
      ),
    );
  }
}
