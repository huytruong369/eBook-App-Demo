import 'package:ebook_app_demo/widgets/reading_list_card.dart';
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
                      devtools.log('Details');
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
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 19),
                    width: double.infinity,
                    height: 204,
                    child: Stack(
                        //TODO The container under the Best of the day
                        ),
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
