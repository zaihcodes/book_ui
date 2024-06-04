import 'package:book_app/core/utils/widgets/build_trending_card.dart';
import 'package:book_app/models/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendingScreens extends StatelessWidget {
  const TrendingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.surface,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Recommended Books',
          style: TextStyle(
              fontSize: 16.sp,
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: Book.generateTrendingBook().length,
          separatorBuilder: (context, index) => Container(
            height: 10.w,
          ),
          itemBuilder: (context, index) {
            final book = Book.generateTrendingBook()[index];
            return buidTrendingCard(context, book, theme);
          },
        ),
      ),
    );
  }
}
