import 'package:clot/core/theme/colors.dart';
import 'package:clot/screens/register/singin_screen.dart';
import 'package:clot/widgets/create_account_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          style: IconButton.styleFrom(
            backgroundColor: AppColors.bgLight1
          ),
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.to(() => SinginScreen());
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              "Create Account",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
            Expanded(child: CreateAccountForm()),
          ],
        ),
      ),
    );
  }
}
