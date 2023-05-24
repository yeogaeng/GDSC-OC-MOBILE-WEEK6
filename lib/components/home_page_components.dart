import 'package:flutter/material.dart';
import 'package:week5/common/const/colors.dart';
import 'package:week5/common/const/text.dart';

class HowtoUseApp extends StatelessWidget {
  const HowtoUseApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Color(0XFFF7FFE7),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 19.0),
            child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(color: Color(0xFFDBFFAC), shape: BoxShape.circle),
                child: Center(
                  child: const Text(
                    'Tip!',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w800),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Container(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    '덕부름 이용 방법',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        '덕부름의 이용 방법을 알아보세요!  ',
                        style: TextStyle(color: GREY700, fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: GREY600,
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class GoSimbooreumApply extends StatelessWidget {
  const GoSimbooreumApply({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: GREY900,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 18.0),
            child: Container(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  '심부름 신청하러 가기',
                  style: TextStyle(color: WHITE, fontWeight: FontWeight.w700, fontSize: 16),
                ),
                SizedBox(
                  height: 4,
                ),
                Text('덕질 관련 심부름을 신청해 보세요!', style: TextStyle(color: WHITE, fontSize: 14))
              ]),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(color: GREY700, shape: BoxShape.circle),
                child: Icon(
                  Icons.arrow_forward,
                  color: WHITE,
                  size: 19,
                )),
          ),
        ]),
      ),
    );
  }
}

class EventLeSSERAFIM extends StatelessWidget {
  const EventLeSSERAFIM({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(12.0), child: Image.asset('assets/images/le.png')),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'EVENT',
                  style: TextStyle(color: WHITE, fontSize: 19),
                ),
                Text(
                  'LE SSERAFIM',
                  style: TextStyle(color: WHITE, fontWeight: FontWeight.w900, fontSize: 23),
                ),
                Text(
                  '지금 이벤트 참가하고 르세라핌 굿즈 받기',
                  style: TextStyle(color: WHITE, fontSize: 13),
                ),
                const SizedBox(
                  height: 38,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NoticeCard extends StatelessWidget {
  const NoticeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 8.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 14.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: GREY100,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: const [
          Text(
            "공지",
            style: TextStyle(
              fontSize: 13,
              fontWeight: W800,
              color: GREY900,
              letterSpacing: -0.25,
            ),
          ),
          SizedBox(width: 10),
          Text(
            "덕부름에 새로운 기능이 추가됐어요.",
            style: TextStyle(
              fontSize: 13,
              fontWeight: W500,
              color: GREY900,
              letterSpacing: -0.25,
            ),
          ),
        ],
      ),
    );
  }
}
