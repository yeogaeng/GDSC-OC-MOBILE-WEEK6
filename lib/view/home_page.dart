import 'package:flutter/material.dart';
import 'package:week5/common/const/colors.dart';
import 'package:week5/components/duck_logo.dart';
import 'package:week5/components/home_page_components.dart';
import 'package:week5/components/new_registered_list.dart';
import 'package:week5/components/new_review_upload_card.dart';
import 'package:week5/components/new_simbooreum_container.dart';

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
        children: const [
          Column(
            children: [
              NoticeCard(),
              SizedBox(
                height: 15,
              ),
              EventLeSSERAFIM(),
              SizedBox(
                height: 30,
              ),
              GoSimbooreumApply(),
              SizedBox(
                height: 15,
              ),
              HowtoUseApp(),
              SizedBox(
                height: 35,
              ),
              NewRegisteredList(
                textTitle: '최근 등록된 심부름',
                items: [
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
              ),
              SizedBox(
                height: 27,
              ),
              NewRegisteredList(
                textTitle: '최근 등록된 후기',
                items: [
                  NewReviewUploadCard(
                    img: 'le_chae.jpg',
                    title: '채원바라기 덕부름꾼',
                    introducing: '완전 잘해 주십니다!!',
                  ),
                  NewReviewUploadCard(
                    img: 'ljh.jpg',
                    title: '이재현재 덕부름꾼',
                    introducing: '최고의 덕부름꾼!!',
                  ),
                  NewReviewUploadCard(
                    img: 'leeknow.jpeg',
                    title: '리노리',
                    introducing: '완전 잘해 주십니다!!',
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ],
      ),
    );
  }
}
