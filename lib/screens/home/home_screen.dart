import 'package:clot/widgets/drop_down_menu_wedget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(14),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage("lib/assets/images/user.png")),
                  // creating dropdownmenu
                  SizedBox(width: 72, height: 40, child: DropDownMenuWedget()),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shape: CircleBorder()
                      ),
                      child: Image(
                        image: AssetImage("lib/assets/icons/shop.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
