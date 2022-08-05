import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InputTextField(
                controller: northStreetWidthTextEditingController,
                keyboardType: TextInputType.number,
                label: '',
                focusNode: northStreetFocusNode,
              ),
              InputTextField(
                controller: northStreetWidthTextEditingController,
                keyboardType: TextInputType.number,
                label: '',
                focusNode: northStreetFocusNode,
              ),
              InputTextField(
                controller: westStreetTextEditingController,
                keyboardType: TextInputType.number,
                label: '',
                focusNode: westStreetFocusNode,
              ),
              InputTextField(
                controller: eastStreetTextEditingController,
                keyboardType: TextInputType.number,
                label: '',
                focusNode: eastStreetFocusNode,
              ),
              12.h.verticalSpace,
              Container(
                child: TextButton(
                  child: Text(S.current.locateNow),
                  onPressed: () {},
                ),
              ),
              16.h.verticalSpace,
              InputTextField(
                controller: moreDetailsAboutAnnouncement,
                keyboardType: TextInputType.text,
                label: S.current.moreDetailsAboutTheAnnouncement,
                focusNode: moreDetailsFocusNode,
              ),
              16.h.verticalSpace,
              InputTextField(
                controller: emailAddressTextEditingController,
                keyboardType: TextInputType.emailAddress,
                label: S.current.emailAddress,
                focusNode: emailAddressFocusNode,
              ),

              /// Postor Personnality
              CustomDropDownButton(),
            ],
          ),
        ],
      ),
    );
  }
}
