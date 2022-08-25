import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/app/features/create_announcement_second_step/presentation/widgets/currencies_modal_bottom_sheet.dart';
import 'package:wassiet/app/features/create_announcement_second_step/presentation/widgets/property_types_modal_bottom_sheet.dart';
import 'package:wassiet/app/features/create_announcement_second_step/presentation/widgets/purpose_of_announcement_modal_bottom_sheet.dart';
import 'package:wassiet/app/features/create_announcement_second_step/presentation/mobx/create_announcement_second_step_store.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/widgets.dart';

class CreateAnnouncementSecondStepPage extends StatelessWidget {
  CreateAnnouncementSecondStepPage({Key? key}) : super(key: key);

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
  // final CreateAnnouncementSecondStepVM createAnnouncementSecondStepVM = CreateAnnouncementSecondStepVM();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // Observer(
          //   builder: (_) => CustomDropDownButton(
          //     content: createAnnouncementSecondStepVM.purposeOfAnnouncementName ?? S.current.purposeOfAnouncement,
          //     label: S.current.purposeOfAnouncement,
          //     onTap: () => customModalBottomSheet(
          //       context: context,
          //       modalBottomSheet: PurposeOfAnnouncementModalBottomSheet(
          //         callBack: createAnnouncementSecondStepVM.selectedPurposeOfAnnouncementName,
          //       ),
          //     ),
          //   ),
          // ),

          12.h.verticalSpace,
          // Observer(
          //   builder: (_) => CustomDropDownButton(
          //     content: createAnnouncementSecondStepVM.propertyTypeName ?? S.current.propertyType,
          //     label: S.current.propertyType,
          //     onTap: () => customModalBottomSheet(
          //       context: context,
          //       modalBottomSheet: PropertyTypesModalBottomSheet(
          //         callBack: createAnnouncementSecondStepVM.selectedPropertyTypeName,
          //       ),
          //     ),
          //   ),
          // ),

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
              // Expanded(
              //   child: Observer(
              //     builder: (_) => CustomDropDownButton(
              //       content: createAnnouncementSecondStepVM.currencyName ?? S.current.price,
              //       label: S.current.price,
              //       onTap: () => customModalBottomSheet(
              //         context: context,
              //         modalBottomSheet: CurrenciesModalBottomSheet(
              //           callBack: createAnnouncementSecondStepVM.selectedCurrencyName,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
          const RequriedField(),
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
