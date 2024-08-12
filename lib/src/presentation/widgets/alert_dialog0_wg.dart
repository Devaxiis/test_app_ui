import 'package:flutter/material.dart';
import 'package:test_app_exam/src/utils/app_colors.dart';
import 'package:test_app_exam/src/utils/app_images.dart';
import 'package:test_app_exam/src/utils/app_style.dart';

class AlertDialog0Wg extends StatelessWidget {
  final Function() onCancel;
  final Function() onYakunlash;
  const AlertDialog0Wg({super.key, required this.onCancel, required this.onYakunlash});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 250
      ),
      child: Material(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: Container(
          height: 100,
          padding: const EdgeInsets.all(18),
          decoration: const BoxDecoration(
              color: AppColors.ffffffCL,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 100,
                width: 100,
                child: Image(image: AppImages.imageAlert)),
              const Text(
                  "Haqiqatdan ham testni yakunlashni hohlaysizmi?.\n Belgilanmagan test javoblar xato deb hisobga olinadi.",
                  style: AppStyle.appTestYakunlash,textAlign: TextAlign.center,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => onCancel(),
                    child: Container(
                      height: 56,
                      width: MediaQuery.sizeOf(context).width * 0.35,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: AppColors.f1f3f7CL,
                        borderRadius: BorderRadius.all(Radius.circular(8))
                      ),
                      child: const Text("Qaytish"),
                    )),


                  InkWell(
                    onTap: () => onYakunlash(),
                    child: Container(
                      height: 56,
                      width: MediaQuery.sizeOf(context).width * 0.35,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: AppColors.EB5757CL,
                        borderRadius: BorderRadius.all(Radius.circular(8))
                      ),
                      child: const Text("Yakunlash"),
                    )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
