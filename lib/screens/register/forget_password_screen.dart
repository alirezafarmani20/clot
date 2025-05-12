import 'package:clot/core/theme/colors.dart';
import 'package:clot/screens/register/create_account_screen.dart';
import 'package:clot/screens/register/send_email_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          style: IconButton.styleFrom(backgroundColor: AppColors.bgLight1),
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.to(() => CreateAccountScreen());
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Forgot Password",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 10),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Email address",
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please inter your email";
                      } else if (!RegExp(
                        r'^[^@]+@[^@]+\.[^@]+',
                      ).hasMatch(value)) {
                        return "please inter a valid email";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // create submit button
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                 //its will send an email to restare password
                 Get.to(()=> SendEmailScreen());
                },
                child: Text(
                  "Continue",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: AppColors.bgLight1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
