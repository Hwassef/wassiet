import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/widgets.dart';
import 'dart:math' as math;

class AddCommentModalBottomSheet extends StatefulWidget {
  const AddCommentModalBottomSheet({super.key});

  @override
  State<AddCommentModalBottomSheet> createState() => _AddCommentModalBottomSheetState();
}

class _AddCommentModalBottomSheetState extends State<AddCommentModalBottomSheet> {
  final GlobalKey<FormFieldState> _formKey = GlobalKey<FormFieldState>();
  final TextEditingController commentTextEditingController = TextEditingController();
  final FocusNode commentFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final TextTheme theme = Theme.of(context).textTheme;
    return FittedBox(
      fit: BoxFit.fill,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
          top: 16.h,
          bottom: 46.h,
        ),
        child: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: AppSizes.size42.w,
                      child: Divider(
                        height: 4.h,
                        thickness: 4.h,
                        color: AppColors.darkGreyColor,
                      ),
                    ),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          S.current.yourRate,
                          style: theme.headline5?.copyWith(
                            color: AppColors.blackColor,
                          ),
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Transform.rotate(
                            angle: 180 * math.pi / 260,
                            child: const Icon(
                              Icons.star,
                              color: AppColors.cyanColor,
                            ),
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                        Observer(
                          builder: (_) => InputTextField(
                            controller: commentTextEditingController,
                            keyboardType: TextInputType.name,
                            label: S.current.searchForSomething,
                            focusNode: commentFocusNode,
                            isRequired: false,
                            onChanged: (String text) {},
                            maxLines: 4,
                            minLines: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                24.0.h.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 50,
                          blurRadius: 40,
                        ),
                      ],
                    ),
                    child: GradientElevatedButton(
                      isButtonEnabled: true,
                      onPressed: () {
                        context.popRoute();
                      },
                      child: Text(S.current.confirm),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
