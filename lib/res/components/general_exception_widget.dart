import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors/app_colors.dart';

class GeneralExceptionWidget extends StatefulWidget {
  final VoidCallback onPressed;
  const GeneralExceptionWidget({super.key, required this.onPressed});

  @override
  State<GeneralExceptionWidget> createState() =>
      _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.warning,
              color: AppColors.redColor,
              size: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                  child: Text(
                    "General_exception".tr,
                    textAlign: TextAlign.center,
                  )),
            ),
            SizedBox(height: Get.height * 0.02),
            InkWell(
              onTap: widget.onPressed,
              child: Container(
                height: 44,
                width: 154,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.secondaryButtonColor,
                    borderRadius: BorderRadius.circular(14.0)),
                child: Text(
                  "Try Again".tr,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: AppColors.whiteColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
