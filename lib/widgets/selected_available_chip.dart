import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';

class SelectedAvailableChip extends StatefulWidget {
  const SelectedAvailableChip({
    Key? key,
    required this.label,
    required this.onDeleted,
  }) : super(key: key);
  final String label;
  final void Function()? onDeleted;

  @override
  State<SelectedAvailableChip> createState() => _SelectedAvailableChipState();
}

class _SelectedAvailableChipState extends State<SelectedAvailableChip> {
  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(widget.label),
      onDeleted: widget.onDeleted,
      backgroundColor: AppColors.purpleBackgroundColor.withOpacity(0.1),
      deleteIcon: Container(
        height: 19,
        width: 19,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Image.asset(AppImages.deleteIcon),
      ),
    );
  }
}
