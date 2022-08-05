import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/widgets.dart';

class CreateAnnouncementSecondStep extends StatelessWidget {
  CreateAnnouncementSecondStep({Key? key}) : super(key: key);

  @override
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

  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          /// This one is used to show the purpose of annoucenemt
          CustomDropDownButton(),
          const RequriedField(),

          /// This one is used to show the type of announcement
          CustomDropDownButton(),
          const RequriedField(),

          /// This one is used to show the unity of measuring
          CustomDropDownButton(),
          const RequriedField(),

          InputTextField(
            controller: spaceInSquareMeter,
            keyboardType: TextInputType.number,
            label: S.current.spaceInSquareMeters,
            focusNode: spaceInMeterSquareMeter,
          ),
          const RequriedField(),

          InputTextField(
            controller: priceSquareMeterTextEditingController,
            keyboardType: TextInputType.number,
            label: S.current.squareMeterPrice,
            focusNode: priceSquareMeterFocusNode,
          ),
          const RequriedField(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InputTextField(
                controller: totalPriceTextEditingController,
                keyboardType: TextInputType.number,
                label: S.current.totalPrice,
                focusNode: totalPriceFocusNode,
              ),
              CustomDropDownButton(),
            ],
          ),
          const RequriedField(),
          Row(
            children: [
              Text(
                S.current.priceWillBeCaluclatedAutomaticaly,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: AppColors.cyanColor,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
