import 'package:book_app/models/book.dart';
import 'package:book_app/presentation/screens/book_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendingWidget extends StatelessWidget {
  const TrendingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 300.h,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: Book.generateTrendingBook().length,
        separatorBuilder: (context, index) => Container(
          height: 10.w,
        ),
        itemBuilder: (context, index) {
          final book = Book.generateTrendingBook()[index];
          return SizedBox(
            height: 110.h,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BookDetailScreen(book: book)));
                  },
                  child: SizedBox(
                    width: 80.w,
                    height: 110.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        book.imgUrl!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              book.name!,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: theme.colorScheme.onSurface,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              book.author!,
                              style: TextStyle(
                                  color: theme.colorScheme.onSurface
                                      .withOpacity(0.5)),
                            )
                          ],
                        ),
                      ),
                      // const Spacer(),
                      Text(
                        '${book.desc!.substring(0, 35)}...',
                        style: TextStyle(
                            color:
                                theme.colorScheme.onSurface.withOpacity(0.5)),
                      ),
                      // SizedBox(
                      //   height: 15.h,
                      // ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange.shade300),
                          Text(
                            '${book.score}',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: theme.colorScheme.onSurface,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '(${book.review})',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: theme.colorScheme.onSurface,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10.h,
                          ),
                          Icon(
                            Icons.visibility,
                            color: theme.colorScheme.onSurface,
                          ),
                          Text(
                            '${book.view}',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: theme.colorScheme.onSurface,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' Read',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: theme.colorScheme.onSurface,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
            size: 14,
          ),
          const SizedBox(
            width: 2,
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white70),
          )
        ],
      ),
    );
  }
}
