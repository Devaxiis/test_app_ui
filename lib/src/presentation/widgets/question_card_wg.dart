import 'package:flutter/material.dart';
import 'package:test_app_exam/src/utils/app_colors.dart';
import 'package:test_app_exam/src/utils/app_style.dart';



class QuestionCardWg extends StatelessWidget {
  final String question;
  const QuestionCardWg({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.9,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(width: 1, color: AppColors.c006fe5CL)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Savol:",
            style: AppStyle.appSavol,
          ),
          Text(
            question,
            style: AppStyle.appSavoltxt,
            overflow: TextOverflow.visible,
          ),
        ],
      ),
    );
  }
}
