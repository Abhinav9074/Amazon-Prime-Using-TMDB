import 'package:amazon_prime_clone/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class LiveTvScreen extends StatelessWidget {
  const LiveTvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(headText: 'Live TV', goldColor: false, home: false,back: false),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}