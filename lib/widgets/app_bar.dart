import 'package:amazon_prime_clone/media_query/media_query.dart';
import 'package:amazon_prime_clone/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String headText;
  final bool goldColor;
  final bool home;
  final bool back;
  const CustomAppBar(
      {super.key,
      required this.headText,
      required this.goldColor,
      required this.home,
      required this.back});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: appBarHeight(context),
        color: const Color.fromARGB(255, 0, 4, 9),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  back == true
                      ? IconButton(
                          onPressed: () {}, icon: const Icon(Icons.arrow_back,color: Colors.white,))
                      : const SizedBox(),
                  home == true
                      ? Image.asset(
                          'assets/images/app_bar_logo.png',
                          width: 90,
                          height: 40,
                        )
                      : Text(
                          headText,
                          style: goldColor == true
                              ? MyTextStyle.appBarTextG
                              : MyTextStyle.appBarTextW,
                        ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FaIcon(
                    FontAwesomeIcons.chromecast,
                    color: Colors.grey,
                    size: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    LineIcons.userCircleAlt,
                    color: Colors.grey,
                    size: 40,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 100);
}
