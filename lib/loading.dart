import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1,
      child: Center(
        child: LottieBuilder.asset(
          'img/loading.json',
          height: 400,
          width: 300,
        ),
      ),
    );
  }
}
