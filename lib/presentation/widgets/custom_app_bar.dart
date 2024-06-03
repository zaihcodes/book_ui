import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Search Book Here...',
                hintStyle: TextStyle(
                  color:
                      theme.colorScheme.onSecondaryContainer.withOpacity(0.5),
                ),
                filled: true,
                fillColor: theme.colorScheme.secondaryContainer,
                prefixIcon: Icon(
                  Icons.search,
                  size: 30,
                  color: theme.colorScheme.onSecondaryContainer,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.dark_mode,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
