import 'package:flutter/widgets.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/widgets.dart';

class CreateAnnouncementFourthStep extends StatelessWidget {
  CreateAnnouncementFourthStep({Key? key}) : super(key: key);

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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(S.current.buildings),
            ],
          ),
          InputTextField(
            controller: appartmentsNumberTextEditingController,
            keyboardType: TextInputType.number,
            label: S.current.numberOfAppartments,
            focusNode: appartmentsNumberFocusNode,
          ),
          InputTextField(
            controller: stagesNumberTextEditingController,
            keyboardType: TextInputType.number,
            label: S.current.numberOfElevators,
            focusNode: stagesNumberFocusNode,
          ),
          InputTextField(
            controller: storesNumberTextEditingController,
            keyboardType: TextInputType.number,
            label: S.current.numberOfShops,
            focusNode: storesNumberFocusNode,
          ),
          InputTextField(
            controller: elevatorsNumberTextEditingController,
            keyboardType: TextInputType.number,
            label: S.current.numberOfElevators,
            focusNode: elevatorsNumberFocusNode,
          ),
          InputTextField(
            controller: ageOfAppartmentTextEditingController,
            keyboardType: TextInputType.number,
            label: S.current.propertyAge,
            focusNode: ageOfAppartmentFocusNode,
          ),

          /// Available DropDown
          CustomDropDownButton(),
        ],
      ),
    );
  }
}
