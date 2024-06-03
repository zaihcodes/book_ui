import 'package:book_app/models/book.dart';
import 'package:book_app/presentation/screens/book_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 180.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: Book.generateRecommendedBook().length,
        separatorBuilder: (context, index) => Container(
          width: 10.w,
        ),
        itemBuilder: (context, index) {
          final book = Book.generateRecommendedBook()[index];
          return AspectRatio(
            aspectRatio: 1.7 / 3,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BookDetailScreen(book: book)));
              },
              child: Stack(
                children: [
                  SizedBox(
                    width: 130,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              book.imgUrl!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            book.name!,
                            overflow: TextOverflow.ellipsis,
                            style:
                                TextStyle(color: theme.colorScheme.onSurface),
                          ),
                        ),
                        Text(
                          book.author!,
                          style: TextStyle(
                              color:
                                  theme.colorScheme.onSurface.withOpacity(0.5)),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 10,
                      left: 10,
                      child: _buildIconText(
                          Icons.star, Colors.orange[300]!, '${book.score}'))
                ],
              ),
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
