import 'package:flutter/material.dart';
import 'package:week5/common/const/colors.dart';

class NewRegisteredBar extends StatelessWidget {
  const NewRegisteredBar({
    super.key,
    required this.textTitle,
  });

  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        child: Row(children: [
          Text(
            textTitle,
            style: TextStyle(color: GREY900, fontSize: 16, fontWeight: FontWeight.w800),
          ),
          Spacer(),
          Text(
            '더보기 ',
            style: TextStyle(color: GREY400),
          ),
          Icon(Icons.arrow_forward_ios, size: 9, color: GREY400),
        ]),
      ),
    );
  }
}
