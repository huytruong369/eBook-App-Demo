import 'package:ebook_app_demo/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;
import '../constant.dart';
import 'book_rating.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Crushing &',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'Influence',
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          'When the earth was flat and everyone wanted to live well. But the eviroment is relly populated. The Water, the air, the soild, everything is getting worse. All people around the world have the responsibility to safe the world',
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RoundedButton(text: 'Read', verticalPadding: 9),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          devtools.log('favorite');
                        },
                        icon: const Icon(
                          Icons.favorite_border,
                        ),
                      ),
                      const BookRating(
                        score: 3.9,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Image.asset(
          'assets/images/book-1.png',
          height: 180,
        ),
      ],
    );
  }
}
