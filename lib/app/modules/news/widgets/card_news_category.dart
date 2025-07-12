import 'package:flutter/material.dart';
import 'package:hello_f1/app/core/theme/theme.dart';

class CardNewsCategory extends StatelessWidget {
  final String title;
  const CardNewsCategory({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(
          title,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: Theme.of(context).colors.colorText,
          ),
        ),
      ),
    );
  }
}
