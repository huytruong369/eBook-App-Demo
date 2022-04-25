import 'package:ebook_app_demo/screens/detail_screen.dart';
import 'package:ebook_app_demo/widgets/book_rating.dart';
import 'package:ebook_app_demo/widgets/two_size_rounded_button.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;
  final VoidCallback pressDetails;
  final VoidCallback pressRead;

  const ReadingListCard({
    Key? key,
    required this.image,
    required this.title,
    required this.auth,
    required this.rating,
    required this.pressDetails,
    required this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DetailsScreen();
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 23,
          right: 23,
        ),
        height: 245,
        width: 202,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 221,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 3),
                      blurRadius: 23,
                      color: kShadowColor.withOpacity(.6),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              image,
              width: 150,
            ),
            Positioned(
              top: 35,
              right: 10,
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                  ),
                  BookRating(
                    score: rating,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 160,
              child: Container(
                height: 85,
                width: 202,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 23,
                      ),
                      child: RichText(
                        maxLines: 2,
                        text: TextSpan(
                          style: const TextStyle(
                            color: kBlackColor,
                          ),
                          children: [
                            TextSpan(
                              text: '$title\n',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: auth,
                              style: const TextStyle(
                                color: kLightBlackColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Container(
                          width: 101,
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          alignment: Alignment.center,
                          child: const Text('Detail'),
                        ),
                        Expanded(
                          child: TwoSizeRoundedButton(
                            press: pressRead,
                            radius: 29,
                            text: 'Read',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
