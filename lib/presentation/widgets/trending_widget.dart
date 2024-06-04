import 'package:book_app/core/utils/widgets/build_trending_card.dart';
import 'package:book_app/models/book.dart';
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
          return buidTrendingCard(context, book, theme);
        },
      ),
    );
  }
}
