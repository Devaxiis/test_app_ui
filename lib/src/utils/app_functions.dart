


import 'package:test_app_exam/library.dart';

sealed class AppFunctions{


static Color colorer(int value) {
    Color a = AppColors.ffffffCL;
    switch (value) {
      case 0:
        a = AppColors.ffffffCL;
      case 1:
        a = AppColors.EB5757CL;
      case 2:
        a = AppColors.c00D856CL;
    }
    return a;
  }

}