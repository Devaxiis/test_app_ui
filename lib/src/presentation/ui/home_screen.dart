import 'package:test_app_exam/library.dart';
import 'package:test_app_exam/src/data/fake_data.dart';
import 'package:test_app_exam/src/domain/models/test_model.dart';
import 'package:test_app_exam/src/presentation/widgets/card_test_wg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexlist = 0;
  bool islight = true;
  final controller = PageController();
  MainTestModel testData = MainTestModel(id: 0, countTest: 0, data: []);
  @override
  void initState() {
    super.initState();
    testData = TestData.firstTest;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.f1f3f7CL,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 25),
              BlocBuilder<AppThemeBloc, AppThemeState>(
                builder: (context, state) {
                  return CustomAppBarWg(
                    isLight: islight,
                    onLight: () {
                      context.read<AppThemeBloc>().add(
                          AppThemeCustomEvent(isLight: islight = !islight));
                    },
                    onTab: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog0Wg(
                              onYakunlash: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialogWg(
                                        totalCount: 100,
                                        testCount: 30,
                                        onCancel: () {
                                          Navigator.pop(context);
                                          Navigator.pop(context);
                                        },
                                        onRestest: () {},
                                      );
                                    });
                              },
                              onCancel: () {
                                Navigator.pop(context);
                              },
                            );
                          });

                      // AppDialog().succesAlert(
                      //   context: context,
                      //   onCancel: () {

                      //   },
                      //   onConf: () {
                      //   },
                      // );
                      setState(() {});
                    },
                  );
                },
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: SizedBox(
                  height: 35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      // indexlist = index;
                      return GestureDetector(
                        onTap: () {
                          indexlist = index;
                          if (indexlist == index) {
                            controller.jumpToPage(indexlist);
                          }
                          setState(() {});
                        },
                        child: Container(
                          height: 35,
                          width: 35,
                          margin: const EdgeInsets.only(left: 8),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: AppColors.ffffffCL,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Text("$index"),
                        ),
                      );
                    },
                    itemCount: testData.countTest,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              SizedBox(
                height: 500,
                child: PageView.builder(
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    itemCount: testData.countTest,
                    itemBuilder: (_, index) {
                      return CardTestWg(
                          index: index, data: testData.data[index]);
                    }),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 24),
              //   child: SizedBox(
              //     height: 400,
              //     width: MediaQuery.sizeOf(context).width,
              //     child: ListView.separated(
              //       itemCount: testData.data.length / 2,
              //       itemBuilder: (_, index) {
              //         return JavobWg(
              //           jabovIndex: index,
              //           javob: 'Mijor servis markaziga olib boradi.',
              //           onTab: () {},
              //         );
              //       },
              //       separatorBuilder: (_, value) => const SizedBox(
              //         height: 10,
              //       ),
              //     ),
              //   ),
              // )
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          if (indexlist > 0) {
                            controller.jumpToPage(indexlist--);
                          }
                          setState(() {
                            
                          });
                        },
                        icon: const Icon(
                          Icons.arrow_back_sharp,
                          color: AppColors.c8192A5CL,
                        )),
                    Text(
                      "$indexlist/10",
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: AppColors.c8192A5CL),
                    ),
                    IconButton(
                        onPressed: () {
                          if (indexlist <= testData.countTest) {
                            controller.jumpToPage(indexlist++);
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(content: Text("Tugadi")));
                          }
                          setState(() {
                            
                          });
                        },
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: AppColors.c8192A5CL,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color(0xffb1b8c1),
        selectedItemColor: const Color(0xff006fe5),
        currentIndex: 2,
        items: const [
          BottomNavigationBarItem(
              icon: Image(
                image: AppImages.imageAsosiy,
                height: 24,
                width: 24,
              ),
              label: "Asosiy"),
          BottomNavigationBarItem(
              icon: Image(
                image: AppImages.imageRule,
                height: 24,
                width: 24,
              ),
              label: "Qoidalar"),
          BottomNavigationBarItem(
              icon: Image(
                image: AppImages.imageTest,
                height: 24,
                width: 24,
              ),
              label: "Test"),
          BottomNavigationBarItem(
              icon: Image(
                image: AppImages.imageProfil,
                height: 24,
                width: 24,
              ),
              label: "Profil"),
        ],
      ),
    );
  }
}
