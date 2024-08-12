import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:test_app_exam/src/utils/app_colors.dart';
import 'package:test_app_exam/src/utils/app_images.dart';

import '../bloc/app_theme/app_theme_bloc.dart';

class CustomAppBarWg extends StatelessWidget {
  final Function() onTab;
  final Function() onLight;
  final bool isLight;
  const CustomAppBarWg({super.key, required this.onTab, required this.onLight, required this.isLight});

  @override
  Widget build(BuildContext context) {
    int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30;
    CountdownTimerController controller =
        CountdownTimerController(endTime: endTime);
    return Container(
      height: 52,
      width: MediaQuery.sizeOf(context).width * 0.9,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: AppColors.ffffffCL,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => onTab(),
            child: const Image(
              image: AppImages.imageExit,
              height: 24,
              width: 24,
            ),
          ),
          const Image(
            image: AppImages.imageInform,
            height: 24,
            width: 24,
          ),
          GestureDetector(
            onTap: () => onLight(),
            child:isLight? const Image(
              image: AppImages.imageMoon,
              height: 24,
              width: 24,
            ):const Icon(Icons.light,color: AppColors.c8192A5CL,),
          ),
          Container(
              height: 28,
              width: 78,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: const BoxDecoration(
                  color: AppColors.f1f3f7CL,
                  borderRadius: BorderRadius.all(Radius.circular(38))),
              child: const Row(
                children: [
                  Image(
                    image: AppImages.imageTimer,
                    height: 24,
                    width: 24,
                  ),
                  Text("19:59"),
                ],
              )),
        ],
      ),
    );
  }
}
