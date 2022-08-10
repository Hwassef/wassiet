import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wassiet/app/models/create_announcement_fith_step_vm.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';

class AddAnnouncementPicture extends StatefulWidget {
  const AddAnnouncementPicture({
    Key? key,
    required this.callBack,
  }) : super(key: key);
  final Function callBack;

  @override
  State<AddAnnouncementPicture> createState() => _AddAnnouncementPicture();
}

final CreateAnnouncementFithStepVM createAnnouncementFirstStepVM = CreateAnnouncementFithStepVM();

class _AddAnnouncementPicture extends State<AddAnnouncementPicture> {
  Future pickImage(ImageSource imageSource) async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
      Permission.photos,
    ].request();
    if (Platform.isAndroid) {
      if (statuses[Permission.camera] == PermissionStatus.granted &&
          statuses[Permission.photos] == PermissionStatus.granted) {
        try {
          final image = await ImagePicker().pickImage(source: imageSource);
          if (image == null) {
            return;
          }
          final imageTemporary = File(image.path);
          widget.callBack(imageTemporary);
        } on PlatformException catch (e) {
          debugPrint('Failed to pick image: $e');
        }
      }
    } else {
      try {
        final image = await ImagePicker().pickImage(source: imageSource);
        if (image == null) {
          return;
        }
        final imageTemporary = File(image.path);
        widget.callBack(imageTemporary);
      } on PlatformException catch (e) {
        debugPrint('Failed to pick image: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(createAnnouncementFirstStepVM.images.length);
        changePictyreModalBottomSheet(context: context);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 144,
            width: 175,
            decoration: BoxDecoration(
              color: AppColors.cyanColor.withOpacity(0.9),
              borderRadius: AppConstants.largeBorderRadius,
            ),
          ),
          Image.asset(
            AppImages.addIcon,
            width: 30,
            height: 30,
          ),
        ],
      ),
    );
  }

  Future<T?> changePictyreModalBottomSheet<T>({
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
        return FittedBox(
          fit: BoxFit.fill,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              left: 24.w,
              top: 16.h,
              bottom: 36.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: AppColors.lightGreyColor,
                      width: 46.w,
                      height: AppSizes.size4.h,
                    ),
                  ],
                ),
                AppSizes.size24.h.verticalSpace,
                GestureDetector(
                  onTap: () => pickImage(ImageSource.camera),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: AppColors.lightGreyColor,
                        child: Image.asset(
                          AppImages.cameraIcon,
                          width: 18,
                          height: 18,
                        ),
                      ),
                      11.w.horizontalSpace,
                      Text(
                        S.current.phoneCamera,
                        style: Theme.of(context).textTheme.subtitle2,
                      )
                    ],
                  ),
                ),
                22.h.verticalSpace,
                GestureDetector(
                  onTap: () => pickImage(ImageSource.gallery),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: AppColors.lightGreyColor,
                        child: Image.asset(
                          AppImages.galleryIcon,
                          width: 18,
                          height: 18,
                        ),
                      ),
                      11.w.horizontalSpace,
                      Text(
                        S.current.gallery,
                        style: Theme.of(context).textTheme.subtitle2,
                      )
                    ],
                  ),
                ),
                34.w.horizontalSpace,
              ],
            ),
          ),
        );
      },
    );
  }
}
