import 'package:book_app/presentation/widgets/custom_app_bar.dart';
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
              height: 20.h,
            ),
            UpcomingBooks(),
          ],
        ),
      ),
    );
  }
}
