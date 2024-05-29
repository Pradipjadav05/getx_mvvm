import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class RoundedButton extends StatelessWidget {
  final bool loading;
  final double height, width;
  final String title;
  final VoidCallback onPressed;
  final Color textColor, bottonColor;

  const RoundedButton({
    super.key,
    this.loading = false,
    this.height = 50,
    this.width = 60,
    required this.title,
    required this.onPressed,
    this.textColor = AppColors.primaryTextColor,
    this.bottonColor = AppColors.primaryButtonColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: bottonColor,
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: loading
            ? const Center(child:  CircularProgressIndicator())
            : Center(
              child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: AppColors.whiteColor),
                ),
            ),
      ),
    );
  }
}
