import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/app/models/create_announcement_first_step_vm.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/add_announcement_picture.dart';
import 'package:wassiet/widgets/widgets.dart';

class CreateAnnouncementFirstStep extends StatefulWidget {
  CreateAnnouncementFirstStep({Key? key}) : super(key: key);

  @override
  State<CreateAnnouncementFirstStep> createState() => _CreateAnnouncementFirstStepState();
}

class _CreateAnnouncementFirstStepState extends State<CreateAnnouncementFirstStep> {
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

  final CreateAnnouncementFirstStepVM createAnnouncementFirstStepVM = CreateAnnouncementFirstStepVM();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Observer(
            builder: (_) => InputTextField(
              controller: announcementAddressTextEditingController,
              keyboardType: TextInputType.name,
              label: S.current.anouncementTitle,
              focusNode: announcementAddressFocusNode,
              hintText: S.current.anouncementTitle,
              autoValidateMode: AutovalidateMode.onUserInteraction,
              onChanged: (String title) => createAnnouncementFirstStepVM.announcementTitle = title,
              validator: (String? title) => createAnnouncementFirstStepVM.validateAnnouncementTitle(title: title ?? ''),
            ),
          ),
          12.h.verticalSpace,
          Observer(
            builder: (_) => CustomDropDownButton(
              content: createAnnouncementFirstStepVM.countryName ?? S.current.country,
              label: S.current.country,
              onTap: () => showModalBottomSheet(
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
                builder: (_) => CountriesSheet(
                  callBack: createAnnouncementFirstStepVM.selectedCountryName,
                ),
              ),
            ),
          ),
          12.h.verticalSpace,
          Observer(
            builder: (_) => CustomDropDownButton(
              content: createAnnouncementFirstStepVM.regionName ?? S.current.region,
              label: S.current.region,
              onTap: () => showModalBottomSheet(
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
                builder: (_) => RegionsModalBottomSheet(
                  callBack: createAnnouncementFirstStepVM.selectedRegionName,
                ),
              ),
            ),
          ),
          12.h.verticalSpace,
          CustomDropDownButton(
            content: 'change me',
            label: S.current.city,
          ),
          12.h.verticalSpace,
          InputTextField(
            controller: streetAddressTextEditingController,
            keyboardType: TextInputType.name,
            label: S.current.streetAddress,
            focusNode: streetAddressFocusNode,
            hintText: S.current.streetAddress,
          ),
        ],
      ),
    );
  }
}
