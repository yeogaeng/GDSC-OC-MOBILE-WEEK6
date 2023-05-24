import 'package:flutter/material.dart';
import 'package:week5/common/const/colors.dart';

class NewSimbooreumContainer extends StatelessWidget {
  const NewSimbooreumContainer(
      {super.key, required this.boxColor, required this.textColor, required this.title, required this.isNeedMore});

  final Color boxColor;
  final Color textColor;
  final String title;
  final bool isNeedMore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        height: 144,
        width: 144, //여기 고정?
        decoration: BoxDecoration(
          border: Border.all(color: GREY200),
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 14, top: 18),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              decoration: BoxDecoration(
                color: boxColor, //ICEBLUE100
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  '시급 1만원',
                  style: TextStyle(
                      color: textColor, //ICEBLUE800
                      fontWeight: FontWeight.w800,
                      fontSize: 11),
                ),
              ),
            ),
            Text(
              '서울 광진구',
              style: TextStyle(height: 2, fontWeight: FontWeight.w800, fontSize: 14),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 5.0),
              child: Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    decoration: BoxDecoration(
                      color: GREY200,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          color: PRIMARY_COLOR,
                        ),
                      ),
                    ),
                  ),
                  isNeedMore
                      ? Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: PRIMARY_COLOR,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                '+2',
                                style: TextStyle(fontSize: 12, color: WHITE),
                              ),
                            ),
                          ),
                        )
                      : SizedBox.shrink()
                ]),
              ),
            ),
            Text(
              '8/6 오후 8:00',
              style: TextStyle(fontSize: 12, color: GREY400),
            ),
          ]),
        ),
      ),
    );
  }
}
