import 'package:book_app/core/utils/widgets/section_title.dart';
import 'package:book_app/presentation/widgets/custom_app_bar.dart';
import 'package:book_app/presentation/widgets/recommended_widget.dart';
import 'package:book_app/presentation/widgets/trending_widget.dart';
import 'package:book_app/presentation/widgets/upcoming_books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(),
            SizedBox(
              height: 10.h,
            ),
            UpcomingBooks(),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SectionTitle(
                    title: 'Recommended for you',
                    func: () {},
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const RecommendedWidget(),
                  SizedBox(
                    height: 10.h,
                  ),
                  SectionTitle(
                    title: 'Trending Book',
                    func: () {},
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const TrendingWidget()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
