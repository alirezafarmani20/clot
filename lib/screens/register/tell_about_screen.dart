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
      body: Column(
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
          DropdownButton<String>(
            value: _selectedAge,
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
          SizedBox(height: 20),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => HomeScreen());
              },
              child: Text(
                "Finish",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
