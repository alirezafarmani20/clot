import 'package:clot/core/theme/colors.dart';
import 'package:clot/screens/home/home_screen.dart';
import 'package:clot/screens/notifications/notifications_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownMenuWedget extends StatefulWidget {
  const DropDownMenuWedget({super.key});

  @override
  State<DropDownMenuWedget> createState() => _DropDownMenuWedgetState();
}

class _DropDownMenuWedgetState extends State<DropDownMenuWedget> {
  String? _selectedPage;
  final Map<String, Widget> pages = {
    // set pages
    "Home": HomeScreen(),
    "Notifications": NotificationsScreen(),
  };
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: AppColors.bgLight2
      ),
      child: DropdownButton(
        alignment: Alignment.center,
        hint: Text("pages"),
        style: Theme.of(context).textTheme.bodyMedium,
        value: _selectedPage,
        underline: Container(height: 0,),
        items:
            pages.keys.map((String pageName) {
              return DropdownMenuItem(value: pageName, child: Text(pageName));
            }).toList(),
        onChanged: (String? newValue) {
          // Explicitly type newValue as String?
          if (newValue != null && pages.containsKey(newValue)) {
            setState(() {
              _selectedPage = newValue;
              Widget? pageToNavigate = pages[newValue];
              if (pageToNavigate != null) {
                Get.to(() => pageToNavigate);
              }
            });
          } else if (newValue == null) {
            setState(() {
              _selectedPage = null;
            });
          }
        },
      ),
    );
  }
}
