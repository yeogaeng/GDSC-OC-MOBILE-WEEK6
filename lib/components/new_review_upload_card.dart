import 'package:flutter/material.dart';
import 'package:week5/common/const/colors.dart';

class NewReviewUploadCard extends StatelessWidget {
  const NewReviewUploadCard({
    super.key,
    required this.img,
    required this.title,
    required this.introducing,
  });

  final String img;
  final String title;
  final String introducing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(children: [
        _newReviewUploadPicture(
          img: img,
        ),
        _newReviewUploadText(
          title: title,
          introducing: introducing,
        ),
      ]),
    );
  }

  Widget _newReviewUploadPicture({required String img}) {
    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(14), topRight: Radius.circular(14)),
      child: Container(
        height: 70,
        width: 140,
        child: Image.asset(
          "assets/images/$img", //'assets/images/le_chae.jpg',
          fit: BoxFit.cover, //BoxFit.cover,
        ),
      ),
    );
  }

  Widget _newReviewUploadText({
    required String title,
    required String introducing,
  }) {
    return Container(
      height: 70,
      width: 140,
      decoration: BoxDecoration(
        color: WHITE,
        boxShadow: [
          BoxShadow(color: GREY400.withOpacity(0.7), blurRadius: 4, spreadRadius: 0, offset: const Offset(0, 1))
        ],
        border: Border.all(color: GREY200),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(14), bottomRight: Radius.circular(14)),
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
            Text(
              title, //'채원바라기 덕부름꾼',
              style: TextStyle(color: GREY900, fontWeight: FontWeight.w700, fontSize: 12, height: 1.5),
            ),
            Text(
              introducing, //'완전 잘해 주십니다!!',
              style: TextStyle(color: GREY400, fontWeight: FontWeight.w500, fontSize: 10, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
