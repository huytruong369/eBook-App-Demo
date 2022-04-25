import 'package:ebook_app_demo/constant.dart';
import 'package:ebook_app_demo/widgets/book_info.dart';
import 'package:ebook_app_demo/widgets/book_rating.dart';
import 'package:ebook_app_demo/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg.png'),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: size.height * .1,
                        ),
                        BookInfo()
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .4 - 30),
                  child: Column(
                    children: [
                      ChapterCard(
                        name: 'Money',
                        chapterNumber: 1,
                        tag: 'Life is about change',
                        press: () {},
                      ),
                      ChapterCard(
                        name: 'Power',
                        chapterNumber: 2,
                        tag: 'Everything loves power',
                        press: () {},
                      ),
                      ChapterCard(
                        name: 'Influence',
                        chapterNumber: 3,
                        tag: 'Influence easily like never befor',
                        press: () {},
                      ),
                      ChapterCard(
                        name: 'Win',
                        chapterNumber: 4,
                        tag: 'Winning is that matters',
                        press: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 23),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(
                          text: 'You might also ',
                        ),
                        TextSpan(
                            text: 'like....',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                          padding: const EdgeInsets.only(
                            left: 24,
                            top: 24,
                            right: 150,
                          ),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: const Color(0xFFFFF8F9),
                          ),
                          child: Column(
                            children: [
                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    color: kBlackColor,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'How To Win\nFriends & Influence\n',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    TextSpan(
                                      text: 'Gary Venchuk',
                                      style: TextStyle(
                                        color: kLightBlackColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Row(
                                children: const [
                                  BookRating(score: 3.6),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: RoundedButton(
                                      text: 'Read',
                                      verticalPadding: 10,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Image.asset(
                          'assets/images/book-3.png',
                          width: 150,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 39,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final VoidCallback? press;
  const ChapterCard({
    Key? key,
    required this.name,
    required this.tag,
    required this.chapterNumber,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 27,
      ),
      margin: const EdgeInsets.only(
        bottom: 16,
      ),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 33,
            color: const Color(0xFFD3D3D3).withOpacity(.84),
          ),
        ],
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Chapter $chapterNumber: $name\n',
                  style: const TextStyle(
                    fontSize: 16,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: tag,
                  style: const TextStyle(
                    color: kLightBlackColor,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
            onPressed: press,
          ),
        ],
      ),
    );
  }
}
