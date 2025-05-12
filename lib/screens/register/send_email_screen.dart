import 'package:clot/screens/register/singin_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendEmailScreen extends StatelessWidget {
  const SendEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("lib/assets/images/sendbox.png")),
            SizedBox(height: 10),
            Text(
              "We Sent you an Email to reset your password.",
              style: Theme.of(context).textTheme.bodyLarge,
              softWrap: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            // retutn button
            SizedBox(
              width: 156,
              height: 52,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => SinginScreen());
                },
                child: Text(
                  "Return to Login",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 15
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
