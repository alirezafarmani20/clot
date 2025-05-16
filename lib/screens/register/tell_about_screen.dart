import 'package:clot/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TellAboutScreen extends StatefulWidget {
  const TellAboutScreen({super.key});

  @override
  State<TellAboutScreen> createState() => _TellAboutScreenState();
}

class _TellAboutScreenState extends State<TellAboutScreen> {
  String? _selectedAge;
  final List<String> _ageRange = ['18-24', '25-34', '35-44', '45-54', '55+'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Tell us About yourself",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 20),
            Text(
              "Who do you shop for ?",
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 161,
                  height: 52,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Men",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
                SizedBox(
                  width: 161,
                  height: 52,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Women",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "How Old are you ?",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: DropdownButton<String>(
                value: _selectedAge,
                hint: Text("set you age"),
                items:
                    _ageRange.map((String range) {
                      return DropdownMenuItem<String>(
                        value: range,
                        child: Text(range),
                      );
                    }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedAge = newValue;
                  });
                  print(newValue);
                },
              ),
            ),
            SizedBox(height: 20),
            Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => HomeScreen());
                },
                child: Text(
                  "Finish",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 19
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
