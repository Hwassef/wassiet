import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/widgets.dart';

class CreateAnnouncementThirdStep extends StatelessWidget {
  CreateAnnouncementThirdStep({Key? key}) : super(key: key);
  final TextEditingController announcementAddressTextEditingController = TextEditingController();
  final FocusNode announcementAddressFocusNode = FocusNode();
  final TextEditingController streetAddressTextEditingController = TextEditingController();
  final FocusNode streetAddressFocusNode = FocusNode();
  final TextEditingController spaceInSquareMeter = TextEditingController();
  final FocusNode spaceInMeterSquareMeter = FocusNode();
  final TextEditingController priceSquareMeterTextEditingController = TextEditingController();
  final FocusNode priceSquareMeterFocusNode = FocusNode();
  final TextEditingController totalPriceTextEditingController = TextEditingController();
  final FocusNode totalPriceFocusNode = FocusNode();
  final TextEditingController northStreetWidthTextEditingController = TextEditingController();
  final FocusNode northStreetFocusNode = FocusNode();
  final TextEditingController southStreetWidthTextEditingController = TextEditingController();
  final FocusNode southStreetFocusNode = FocusNode();
  final TextEditingController eastStreetTextEditingController = TextEditingController();
  final FocusNode eastStreetFocusNode = FocusNode();
  final TextEditingController westStreetTextEditingController = TextEditingController();
  final FocusNode westStreetFocusNode = FocusNode();
  final TextEditingController moreDetailsAboutAnnouncement = TextEditingController();
  final FocusNode moreDetailsFocusNode = FocusNode();
  final TextEditingController emailAddressTextEditingController = TextEditingController();
  final FocusNode emailAddressFocusNode = FocusNode();
  final TextEditingController appartmentsNumberTextEditingController = TextEditingController();
  final FocusNode appartmentsNumberFocusNode = FocusNode();
  final TextEditingController stagesNumberTextEditingController = TextEditingController();
  final FocusNode stagesNumberFocusNode = FocusNode();
  final TextEditingController storesNumberTextEditingController = TextEditingController();
  final FocusNode storesNumberFocusNode = FocusNode();
  final TextEditingController elevatorsNumberTextEditingController = TextEditingController();
  final FocusNode elevatorsNumberFocusNode = FocusNode();
  final TextEditingController ageOfAppartmentTextEditingController = TextEditingController();
  final FocusNode ageOfAppartmentFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          Text(S.current.directionsOfStreetsSurroundingYourProperty),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: InputTextField(
                    controller: northStreetWidthTextEditingController,
                    keyboardType: TextInputType.number,
                    isRequired: false,
                    focusNode: northStreetFocusNode,
                  ),
                ),
                16.w.horizontalSpace,
                Expanded(
                  child: InputTextField(
                    controller: northStreetWidthTextEditingController,
                    keyboardType: TextInputType.number,
                    isRequired: false,
                    focusNode: northStreetFocusNode,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: InputTextField(
                  controller: westStreetTextEditingController,
                  keyboardType: TextInputType.number,
                  isRequired: false,
                  focusNode: westStreetFocusNode,
                ),
              ),
              16.w.horizontalSpace,
              Expanded(
                child: InputTextField(
                  controller: eastStreetTextEditingController,
                  keyboardType: TextInputType.number,
                  isRequired: false,
                  focusNode: eastStreetFocusNode,
                ),
              ),
            ],
          ),
          12.h.verticalSpace,
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 366,
                height: 174,
                child: ClipRRect(
                  borderRadius: AppConstants.largeBorderRadius,
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      AppColors.inactiveGreyColorLight.withOpacity(0.2), // 0 = Colored, 1 = Black & White
                      BlendMode.saturation,
                    ),
                    child: Image.asset(
                      AppImages.mapPlaceHolderImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                width: 175,
                height: 55,
                decoration: const BoxDecoration(
                  borderRadius: AppConstants.mediumBorderRadius,
                  color: AppColors.whiteColor,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    S.current.locateNow,
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 13),
                  ),
                ),
              ),
            ],
          ),
          16.h.verticalSpace,
          InputTextField(
            controller: moreDetailsAboutAnnouncement,
            keyboardType: TextInputType.text,
            label: S.current.moreDetailsAboutTheAnnouncement,
            focusNode: moreDetailsFocusNode,
            maxLines: 8,
            minLines: 6,
          ),
          16.h.verticalSpace,
          InputTextField(
            controller: emailAddressTextEditingController,
            keyboardType: TextInputType.emailAddress,
            label: S.current.emailAddress,
            focusNode: emailAddressFocusNode,
          ),

          /// Postor Personnality
          CustomDropDownButton(
            content: S.current.region,
            label: 'Owner',
          ),
        ],
      ),
    );
  }
}
