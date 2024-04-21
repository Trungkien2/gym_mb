import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tour/common/color_extension.dart';
import 'package:riverpod_tour/router/app_router.gr.dart';

@RoutePage()
class StartedView extends ConsumerStatefulWidget {
  StartedView({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StartedViewState();
}

class _StartedViewState extends ConsumerState<StartedView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Tcolor.whiteColor,
      body: Container(
        width: media.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: Tcolor.listPrimaryG,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  "Fitness",
                  style: TextStyle(
                      color: Tcolor.blackColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Everybody can train!",
                  style: TextStyle(
                      color: Tcolor.grayColor,
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
                Spacer(),
                SafeArea(
                  child: MaterialButton(
                    onPressed: () {
                      context.replaceRoute(OnBoarding());
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                    color: Tcolor.whiteColor,
                    textColor: Tcolor.primaryColor1,
                    height: 50,
                    minWidth: double.maxFinite,
                    child: Text(
                      "Get started",
                      style: TextStyle(color: Tcolor.grayColor, fontSize: 16),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
