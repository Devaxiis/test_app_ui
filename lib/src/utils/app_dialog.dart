import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:test_app_exam/src/utils/app_colors.dart';

class AppDialog {
  Future? succesAlert(
      {required BuildContext context,required Function() onConf,required Function() onCancel}) {
    return QuickAlert.show(
      context: context,
      type: QuickAlertType.info,
      backgroundColor: AppColors.ffffffCL,
      headerBackgroundColor: AppColors.ffffffCL,
      customAsset: "assets/images/alert_ic.png",
      
      text:
          'Haqiqatdan ham testni yakunlashni hohlaysizmi?.\n Belgilanmagan test javoblar xato deb hisobga olinadi.',
      title: "",
      confirmBtnText: "Qaytish",
      confirmBtnColor: AppColors.f1f3f7CL,
      cancelBtnText: "Yakunlash",
      confirmBtnTextStyle: const TextStyle(color: AppColors.c8192A5CL),
      cancelBtnTextStyle: const TextStyle(color: AppColors.cEB5757CL),
      showCancelBtn: true,
      showConfirmBtn: true,
      onCancelBtnTap: () => onCancel(),
      onConfirmBtnTap: () => onConf(),
    );
  }
  
  
}
