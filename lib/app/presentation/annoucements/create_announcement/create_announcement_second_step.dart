import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/widgets.dart';

class CreateAnnouncementSecondStep extends StatelessWidget {
  CreateAnnouncementSecondStep({Key? key}) : super(key: key);

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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          /// This one is used to show the purpose of annoucenemt
          CustomDropDownButton(
            label: S.current.purposeOfAnouncement,
          ),
          const RequriedField(),

          /// This one is used to show the type of announcement
          CustomDropDownButton(
            label: S.current.propertyType,
          ),
          const RequriedField(),

          /// This one is used to show the unity of measuring
          CustomDropDownButton(
            label: S.current.measruingUnit,
          ),
          const RequriedField(),

          InputTextField(
            controller: spaceInSquareMeter,
            keyboardType: TextInputType.number,
            label: S.current.spaceInSquareMeters,
            focusNode: spaceInMeterSquareMeter,
          ),

          InputTextField(
            controller: priceSquareMeterTextEditingController,
            keyboardType: TextInputType.number,
            label: S.current.squareMeterPrice,
            focusNode: priceSquareMeterFocusNode,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: InputTextField(
                  controller: totalPriceTextEditingController,
                  keyboardType: TextInputType.number,
                  label: S.current.totalPrice,
                  focusNode: totalPriceFocusNode,
                  isRequired: false,
                ),
              ),
              8.w.horizontalSpace,
              Expanded(
                child: CustomDropDownButton(
                  label: S.current.price,
                ),
              ),
            ],
          ),
          8.h.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(S.current.requiredField),
            ],
          ),
          8.h.verticalSpace,
          Row(
            children: [
              Expanded(
                child: Text(
                  S.current.priceWillBeCaluclatedAutomaticaly,
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: AppColors.cyanColor,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
