import 'package:flutter/material.dart';
import 'package:test_app_exam/src/utils/app_colors.dart';
import 'package:test_app_exam/src/utils/app_functions.dart';
import 'package:test_app_exam/src/utils/app_style.dart';

class JavobWg extends StatelessWidget {
  final String javob;
  final int jabovIndex;
  final Function() onTab;
  final int? colorID;
  const JavobWg(
      {super.key,
      required this.javob,
      required this.jabovIndex,
      required this.onTab, required this.colorID});

  @override
  Widget build(BuildContext context) {
    final mapJavob = {1: "A", 2: "B", 3: "C", 4: "D"};
    return Material(
      borderRadius: const BorderRadius.all(const Radius.circular(18)),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(18)),
        onTap: () => onTab(),
        child: Container(
          height: 85,
          width: MediaQuery.sizeOf(context).width * 0.9,
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
              color: AppFunctions.colorer(colorID??0),
              borderRadius: const BorderRadius.all(Radius.circular(8))),
          child: Row(
            children: [
              Text(
                mapJavob[jabovIndex]!,
                style: AppStyle.appJavob,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  javob,
                  style: AppStyle.appJavobtxt,
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
