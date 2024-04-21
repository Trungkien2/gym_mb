import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tour/common/color_extension.dart';
import 'package:riverpod_tour/common/common_widget/on_boarding_page_view.dart';
import 'package:riverpod_tour/router/app_router.gr.dart';

@RoutePage()
class OnBoarding extends ConsumerStatefulWidget {
  OnBoarding({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OnBoardingState();
}

class _OnBoardingState extends ConsumerState<OnBoarding> {
  int seledtPage = 0;
  List pageList = [
    {
      'title': 'Track your Goal!',
      'subtitle':
          "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
      'image': 'asset/images/Group.png'
    },
    {
      'title': 'Get Burn',
      'subtitle':
          "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
      'image': 'asset/images/Frame.png'
    },
    {
      'title': 'Eat Well',
      'subtitle':
          "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
      'image': 'asset/images/Frame2.png'
    },
    {
      'title': 'Improve Sleep  Quality',
      'subtitle':
          "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
      'image': 'asset/images/Frame3.png'
    },
  ];
  PageController controller = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      seledtPage = controller.page?.round() ?? 0;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Tcolor.whiteColor,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: pageList.length,
            itemBuilder: (context, index) {
              var pobj = pageList[index] as Map? ?? {};
              return OnBoardingPageView(pobj: pobj);
            },
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Tcolor.primaryColor1,
                borderRadius: BorderRadius.circular(35)),
            child: IconButton(
                onPressed: () {
                  if (seledtPage < 3) {
                    seledtPage += 1;
                    controller.jumpToPage(seledtPage);
                  } else if (seledtPage == pageList.length - 1) {
                    print('cuoi page ne');
                    context.replaceRoute(const LoginRoute());
                  }
                },
                icon: Icon(
                  Icons.navigate_next,
                  color: Tcolor.whiteColor,
                )),
          )
        ],
      ),
    );
  }
}
