import 'package:book_app/models/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpcomingBooks extends StatelessWidget {
  UpcomingBooks({super.key});
  final List<Book> upcominBooks = [
    Book(
        'assets/images/book6.jpg',
        'Harry Potter ve Ateş Kadehi',
        'J.K. Rowling',
        4.9,
        107.3,
        2.7,
        ['Action', 'Fantasy', 'Supernatural'],
        'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.'),
    Book(
        'assets/images/book7.jpg',
        'Harry Potter ve Azkaban Tutsağı',
        'J.K. Rowling',
        4.9,
        107.3,
        2.7,
        ['Action', 'Fantasy', 'Supernatural'],
        'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.'),
    Book(
        'assets/images/book8.jpg',
        'Harry Potter ve Melez Prens',
        'J.K. Rowling',
        4.9,
        107.3,
        2.7,
        ['Action', 'Fantasy', 'Supernatural'],
        'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.'),
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 130.h,
      width: double.infinity,
      child: Stack(
        children: [
          PageView.builder(
              itemCount: upcominBooks.length,
              itemBuilder: (context, index) {
                final book = upcominBooks[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(book.imgUrl!),
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 20, left: 20, bottom: 20, right: 150),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            theme.colorScheme.shadow.withOpacity(0.7),
                            Colors.transparent
                          ],
                          begin: Alignment.centerLeft,
                          stops: const [0.2, 1],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            book.name!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '${book.desc!.substring(0, 50)}...',
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
          Positioned(
            left: 30.w,
            bottom: 20.w,
            child: SizedBox(
              height: 4.h,
              width: 150.w,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    width: 30,
                    // height: 3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 5, // Use height here for vertical spacing
                ),
                itemCount: upcominBooks.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
