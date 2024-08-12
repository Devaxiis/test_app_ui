import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:test_app_exam/src/utils/app_colors.dart';
import 'package:test_app_exam/src/utils/app_images.dart';
import 'package:test_app_exam/src/utils/app_style.dart';

class AlertDialogWg extends StatelessWidget {
  final int? testCount;
  final int totalCount;
  final Function() onCancel;
  final Function() onRestest;
  const AlertDialogWg(
      {super.key,
      required this.onCancel,
      required this.onRestest,
      required this.testCount, 
      required this.totalCount,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 24),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(18)),
        child: Scaffold(
          body: Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            padding: const EdgeInsets.all(18),
            decoration: const BoxDecoration(
                color: AppColors.ffffffCL,
                borderRadius: BorderRadius.all(Radius.circular(18))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                    height: 150,
                    width: 150,
                    child: Image(image: AppImages.imageStatistic)),
                const Text(
                  "Yakunlandi",
                  style: AppStyle.appYakunlandi,
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      const TextSpan(
                        text: "Afsus sizga ball taqdim etilmadi.\n\n",
                        style: AppStyle.appYakunlandi2,
                      ),
                       TextSpan(
                          text:
                              "Jami to'plagan ballaringiz soni: $totalCount ta\n\n\n",
                          style: AppStyle.appYakunlandi3),
                      TextSpan(
                          text: "Umumiy testlar soni: $testCount",
                          style: AppStyle.appYakunlandi4),
                    ])),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 102,
                      width: MediaQuery.sizeOf(context).width * 0.35,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: AppColors.ce1ffedL,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text("29",style: AppStyle.app29,),
                            Text("Noto’g’ri javob",style: AppStyle.appErrorAnswer,)
                          ],),
                    ),

                    Container(
                      height: 102,
                      width: MediaQuery.sizeOf(context).width * 0.35,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: AppColors.cffe6e6L,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text("1",style: AppStyle.app1,),
                            Text("To'g'ri javob",style: AppStyle.appCorrectAnswer,)
                          ],),
                    ),
                  ],
                ),
                const Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AppImages.imageTimeY,
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "20:00 / 11:34",
                        style: TextStyle(color: AppColors.cFFA500L),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => onRestest(),
                  child: Container(
                    height: 56,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: AppColors.c006fe5CL,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AppImages.imageRefresh,
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Qayat urinish",
                          style: AppStyle.appQaytaurinish,
                        ),
                      ],
                    ),
                  ),
                ),
                Material(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: InkWell(
                    onTap: () => onCancel(),
                    child: Container(
                      height: 56,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: AppColors.f1f3f7CL,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: const Text(
                        "Chiqish",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.c8192A5CL),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
