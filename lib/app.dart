import 'package:test_app_exam/src/presentation/ui/home_screen.dart';
import 'package:test_app_exam/src/presentation/ui/test_ui.dart';

import 'library.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool islight = true;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppThemeBloc(),
        ),
        
      ],
      child: BlocListener<AppThemeBloc, AppThemeState>(
        listener: (context, state) {
          if (state is AppThemeSuccess) {
            islight = state.islight;
          }
        },
        child: BlocBuilder<AppThemeBloc, AppThemeState>(
          builder: (context, state) {
            return MaterialApp(
              theme: islight == true ? ThemeData.light() : ThemeData.dark(),
              debugShowCheckedModeBanner: false,
              home: HomeScreen(),
            );
          },
        ),
      ),
    );
  }
}
