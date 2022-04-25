import 'package:ebook_app_demo/constant.dart';
import 'package:ebook_app_demo/screens/detail_screen.dart';
import 'package:ebook_app_demo/widgets/book_rating.dart';
import 'package:ebook_app_demo/widgets/reading_list_card.dart';
import 'package:ebook_app_demo/widgets/two_size_rounded_button.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
            image: AssetImage('assets/images/main_page_bg.png'),
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * .1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.displaySmall,
                    children: const [
                      TextSpan(text: 'What are you reading '),
                      TextSpan(
                        text: 'today?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ReadingListCard(
                      title: 'Crusing & Influence',
                      auth: 'Gary Venchuk',
                      image: 'assets/images/book-1.png',
                      pressDetails: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const DetailsScreen();
                          }),
                        );
                      },
                      pressRead: () {
                        devtools.log('read');
                      },
                      rating: 3.9,
                    ),
                    ReadingListCard(
                      title: 'Top Ten Businnes Hacks',
                      auth: 'Herman Joel',
                      image: 'assets/images/book-2.png',
                      pressDetails: () {
                        devtools.log('Details');
                      },
                      pressRead: () {
                        devtools.log('read');
                      },
                      rating: 3.6,
                    ),
                    ReadingListCard(
                      title: 'Top Ten Businnes Hacks',
                      auth: 'Herman Joel',
                      image: 'assets/images/book-3.png',
                      pressDetails: () {
                        devtools.log('Details');
                      },
                      pressRead: () {
                        devtools.log('read');
                      },
                      rating: 3.6,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: const [
                          TextSpan(
                            text: 'Best of the ',
                          ),
                          TextSpan(
                            text: 'day',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    bestOfTheDayCard(size, context),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: const [
                          TextSpan(text: 'Continue '),
                          TextSpan(
                            text: 'reading...',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
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
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 19),
      width: double.infinity,
      height: 204,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * .35,
              ),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                color: const Color(0xFFEAEAEA).withOpacity(.45),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'New York Time Best for 11th March 2020',
                    style: TextStyle(
                      fontSize: 9,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'How to \nFriends & Influence',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Text(
                    'Gary Venchuk',
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      BookRating(score: 3.6),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'When the earth was flat and every one wanted to win ',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 13,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              'assets/images/book-3.png',
              width: size.width * .36,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSizeRoundedButton(
                text: 'Read',
                radius: 24,
                press: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
