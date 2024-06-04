import 'package:book_app/models/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailScreen extends StatelessWidget {
  const BookDetailScreen({required this.book, super.key});
  final Book book;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 350.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30)),
                  ),
                  child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(30)),
                      child: Image.asset(
                        book.imgUrl!,
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                    top: 30,
                    left: 20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 16.w,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    book.name!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: theme.colorScheme.onSurface,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    book.author!,
                    style: TextStyle(
                        color: theme.colorScheme.onSurface.withOpacity(0.5)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.orange.shade300),
                      Text(
                        '${book.score}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: theme.colorScheme.onSurface,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '(${book.review})',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: theme.colorScheme.onSurface,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10.h,
                      ),
                      Icon(
                        Icons.visibility,
                        color: theme.colorScheme.onSurface,
                        size: 16,
                      ),
                      Text(
                        ' ${book.view}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: theme.colorScheme.onSurface,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Read',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: theme.colorScheme.onSurface,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: List.generate(book.type!.length, (index) {
                      final type = book.type![index];
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.surfaceContainer,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(type),
                        ),
                      );
                    }),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    '${book.desc!.substring(0, 160)}...',
                    style: TextStyle(
                        color: theme.colorScheme.onSurface.withOpacity(0.5)),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.secondaryContainer,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 16,
                                  color: theme.colorScheme.onSecondaryContainer,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  'Add to Library',
                                  style: TextStyle(
                                      color: theme
                                          .colorScheme.onSecondaryContainer),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primaryContainer,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.menu_book,
                                  size: 16,
                                  color: theme.colorScheme.onPrimaryContainer,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  'Read Now',
                                  style: TextStyle(
                                      color:
                                          theme.colorScheme.onPrimaryContainer),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
