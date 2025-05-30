import 'package:flutter/material.dart';
import 'package:booky/constants.dart';

class CustomCircularProgressBar extends StatelessWidget {
  const CustomCircularProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      strokeWidth: 2,
      color: AppConstants.kPrimaryColor1,
    );
  }
}
