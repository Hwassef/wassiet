import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';

Future<T?> customModalBottomSheet<T>({
  required modalBottomSheet,
  required context,
}) {
  return showModalBottomSheet(
    enableDrag: true,
    isScrollControlled: true,
    backgroundColor: AppColors.whiteColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: AppConstants.extraLargeRadius,
      ),
    ),
    isDismissible: true,
    context: context,
    builder: (_) => modalBottomSheet,
  );
}
