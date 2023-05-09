import 'package:flutter/material.dart';
import 'package:week5/common/const/colors.dart';
import 'package:week5/common/const/text.dart';
import 'package:week5/components/duck_logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WHITE,
        title: const DuckLogo(),
        centerTitle: false,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
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
              ),
              const SizedBox(
                height: 15,
              ),
              const EventLeSSERAFIM(),
              const SizedBox(
                height: 30,
              ),
              const GoSimbooreumApply(),
              const SizedBox(
                height: 15,
              ),
              const HowtoUseApp(),
              const SizedBox(
                height: 35,
              ),
              const NewRegisteredBar(textTitle: '최근 등록된 심부름'),
              const SizedBox(height: 14),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      NewSimbooreumContainer(
                        boxColor: ICEBLUE100,
                        textColor: ICEBLUE800,
                        title: '팬싸 대리응모',
                        isNeedMore: true,
                      ),
                      NewSimbooreumContainer(
                        boxColor: ICEBLUE100,
                        textColor: ICEBLUE800,
                        title: '행사 대리줄서기',
                        isNeedMore: false,
                      ),
                      NewSimbooreumContainer(
                        boxColor: ICEBLUE100,
                        textColor: ICEBLUE800,
                        title: '팬싸 대리응모',
                        isNeedMore: true,
                      ),
                    ],
                  )),
              const SizedBox(
                height: 27,
              ),
              const NewRegisteredBar(textTitle: '최근 등록된 후기'),
              const SizedBox(
                height: 13,
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14)),
                child: Container(
                  height: 70,
                  width: 140,
                  decoration: BoxDecoration(), //그림자
                  child: Image.asset(
                    'assets/images/le_chae.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(color: GREY200),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(children: [
                          Icon(
                            Icons.star,
                            color: YELLOW800,
                            size: 12.5,
                          ),
                          Text(
                            ' 5.0',
                            style: TextStyle(
                              color: GREY900,
                              fontWeight: FontWeight.w800,
                              fontSize: 12,
                            ),
                          )
                        ]),
                      ),
                      const Text(
                        '채원바라기 덕부름꾼',
                        style: TextStyle(
                            color: GREY900,
                            fontWeight: FontWeight.w700,
                            fontSize: 12),
                      ),
                      const Text(
                        '완전 잘해 주십니다!!',
                        style: TextStyle(
                            color: GREY400,
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ],
      ),
    );
  }
}

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
          color: GREEN300,
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 19.0),
            child: Container(
                height: 48,
                width: 48,
                decoration:
                    BoxDecoration(color: GREEN800, shape: BoxShape.circle),
                child: Center(
                  child: const Text(
                    'Tip!',
                    style: TextStyle(fontSize: 16.0),
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '덕부름 이용 방법',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            '덕부름의 이용 방법을 알아보세요!',
                          ),
                          Icon(Icons.arrow_forward_ios),
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '심부름 신청하러 가기',
                      style:
                          TextStyle(color: WHITE, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text('덕질 관련 심부름을 신청해 보세요!', style: TextStyle(color: WHITE))
                  ]),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Container(
                height: 40,
                width: 40,
                decoration:
                    BoxDecoration(color: GREY700, shape: BoxShape.circle),
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
          ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset('assets/images/le.png')),
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
                  style: TextStyle(
                      color: WHITE, fontWeight: FontWeight.w900, fontSize: 23),
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

class NewSimbooreumContainer extends StatelessWidget {
  const NewSimbooreumContainer(
      {super.key,
      required this.boxColor,
      required this.textColor,
      required this.title,
      required this.isNeedMore});

  @override
  final Color boxColor;
  final Color textColor;
  final String title;
  final bool isNeedMore;

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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              style: TextStyle(
                  height: 2, fontWeight: FontWeight.w800, fontSize: 14),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 5.0),
              child: Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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

class NewRegisteredBar extends StatelessWidget {
  const NewRegisteredBar({
    super.key,
    required this.textTitle,
  });

  @override
  final String textTitle;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        child: Row(children: [
          Text(textTitle),
          Spacer(),
          Text('더보기'),
          Icon(Icons.arrow_forward_ios),
        ]),
      ),
    );
  }
}
