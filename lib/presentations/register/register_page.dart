import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tour/common/color_extension.dart';
import 'package:riverpod_tour/presentations/register/register_viewmodel.dart';
import 'package:riverpod_tour/router/app_router.gr.dart';

@RoutePage()
class RegisterPageView extends ConsumerStatefulWidget {
  const RegisterPageView({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RegisterPageViewState();
}

class _RegisterPageViewState extends ConsumerState<RegisterPageView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    final read = ref.read(registerViewModelProvider.notifier);

    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Hey there",
            style: TextStyle(color: Tcolor.grayColor, fontSize: 16),
          ),
          Text(
            "Create an account",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: media.width * 0.05),
          Container(
            decoration: BoxDecoration(
                color: Tcolor.WhiteGrayColor,
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "First Name",
                  hintStyle: TextStyle(color: Tcolor.grayColor, fontSize: 16)),
            ),
          ),
          SizedBox(height: media.width * 0.05),
          Container(
            decoration: BoxDecoration(
                color: Tcolor.WhiteGrayColor,
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              controller: mailController,
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Email",
                  hintStyle: TextStyle(color: Tcolor.grayColor, fontSize: 16)),
            ),
          ),
          SizedBox(height: media.width * 0.05),
          Container(
            decoration: BoxDecoration(
                color: Tcolor.WhiteGrayColor,
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              controller: passController,
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "PassWord",
                  hintStyle: TextStyle(color: Tcolor.grayColor, fontSize: 16)),
            ),
          ),
          SizedBox(height: media.width * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: media.width - 28,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      read.onRegister(nameController.text, mailController.text,
                          passController.text);
                      context.replaceRoute(const LoginRoute());
                    },
                    child: const Text("Register")),
              )
            ],
          ),
          SizedBox(height: media.width * 0.05),
          TextButton(
              onPressed: () {
                context.replaceRoute(const LoginRoute());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: Tcolor.blackColor),
                  ),
                  Text(
                    "login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Tcolor.blackColor),
                  )
                ],
              ))
        ],
      )),
    ));
  }
}
