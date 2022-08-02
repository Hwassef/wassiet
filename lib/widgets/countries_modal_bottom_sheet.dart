import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/app/models/edit_my_informations.dart';
import 'package:wassiet/app/view_models/country.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';

final EditMyInformations _editInformations = EditMyInformations();

Future<T?> countriesModealBottomSheet<T>({
  required BuildContext context,
  Widget? child,
  bool? isScrollControlled,
  ShapeBorder? shape,
  Color? backgroundColor,
  bool isDismissible = true,
  bool enableDrag = true,
  double? elevation,
  bool? withBtn = true,
  Function? handleBtnClick,
  BoxConstraints? constraints,
  AnimationController? animation,
}) {
  return showModalBottomSheet<T>(
    isDismissible: isDismissible,
    transitionAnimationController: animation,
    context: context,
    elevation: 0.0,
    isScrollControlled: isScrollControlled ?? true,
    enableDrag: enableDrag,
    backgroundColor: AppColors.whiteColor,
    shape: shape ??
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: AppConstants.largeRadius,
          ),
        ),
    builder: (BuildContext context) {
      return Column(
        children: [
          Observer(
            builder: (_) => ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: _editInformations.countries.length,
              itemBuilder: ((BuildContext context, index) {
                if (_editInformations.countries.isNotEmpty) {
                  final Country _currentCountry = _editInformations.countries[index];
                  return Text(_currentCountry.name);
                } else {
                  return const SizedBox.shrink();
                }
              }),
            ),
          ),
        ],
      );
    },
  );
}
