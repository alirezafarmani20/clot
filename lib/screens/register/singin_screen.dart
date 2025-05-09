import 'package:clot/core/theme/colors.dart';
import 'package:flutter/material.dart';

class SinginScreen extends StatefulWidget {
  const SinginScreen({super.key});

  @override
  State<SinginScreen> createState() => _SinginScreenState();
}

class _SinginScreenState extends State<SinginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(),
        body: Column(
          children: [
            Text(
              "hello this is sing in page",
              style: TextStyle(color: AppColors.appBlack, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
