import 'package:clot/core/theme/colors.dart';
import 'package:flutter/material.dart';

class SearchInputWidget extends StatefulWidget {
  const SearchInputWidget({super.key});

  @override
  State<SearchInputWidget> createState() => _SearchInputWidgetState();
}

class _SearchInputWidgetState extends State<SearchInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: AppColors.bgLight2,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 45,
          child: TextField(
            decoration: InputDecoration(
              icon: Image(image: AssetImage("lib/assets/icons/search.png")),
              hintText: "Search",
              hintStyle: Theme.of(context).textTheme.bodyMedium,
              border: InputBorder.none,
              filled: true,
              fillColor: AppColors.bgLight2,
            ),
          ),
        ),
      ),
    );
  }
}
