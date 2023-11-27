import 'package:amazon_prime_clone/theme/theme.dart';
import 'package:amazon_prime_clone/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(headText: ' Downloads', goldColor: false, home: false,back: false,),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('No videos downloaded',style: MyTextStyle.scrollingWidgetText,),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child: const Text('Find videos to download')),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Auto Downloads: On',style: MyTextStyle.scrollingWidgetText,),
              FaIcon(FontAwesomeIcons.circleDot),
              Text('Manage',style: MyTextStyle.primeText,)
            ],
          )
        ],
      )),
    );
  }
}