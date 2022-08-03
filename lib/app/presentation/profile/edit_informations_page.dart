import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/app/models/edit_my_informations.dart';
import 'package:wassiet/app/view_models/country.dart';

import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/widgets.dart';

class EditInformationsPage extends StatefulWidget {
  const EditInformationsPage({Key? key}) : super(key: key);

  @override
  State<EditInformationsPage> createState() => _EditInformationsPageState();
}

class _EditInformationsPageState extends State<EditInformationsPage> {
  final TextEditingController fullNameTextEditingController = TextEditingController();
  final FocusNode fullNameFocusNode = FocusNode();
  final TextEditingController emailAddressTextEditingController = TextEditingController();
  final FocusNode emailAddressFocusNode = FocusNode();
  final TextEditingController phoneNumberTextEditingController = TextEditingController();
  final FocusNode phoneNumberFocusNode = FocusNode();
  final EditMyInformations _editInformations = EditMyInformations();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<Country> countriesList = [];
  @override
  void initState() {
    _editInformations.getAllCountries().then((value) => countriesList = value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false, // this is new
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 24.0,
            ),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomBackButton(),
                            Text(
                              S.current.editMyPersonnalInformations,
                              style: Theme.of(context).textTheme.headline1,
                            ),
                          ],
                        ),
                        const UnderlinedText(),
                        22.h.verticalSpace,
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: AppColors.cyanColor,
                              child: Observer(
                                builder: (_) => _editInformations.imageFile != null
                                    ? ClipOval(
                                        child: Image.file(
                                          _editInformations.imageFile!,
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    : Image.asset(
                                        AppImages.userDefaultIcon,
                                        width: 33.0,
                                        height: 36.0,
                                        color: AppColors.whiteColor,
                                      ),
                              ),
                            ),
                            AddPicture(callBack: _editInformations.getImageFromImagePicker)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24.0),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Observer(
                                  builder: (_) => InputTextField(
                                    hintText: S.current.firstNameAndLastName,
                                    controller: fullNameTextEditingController,
                                    keyboardType: TextInputType.name,
                                    label: S.current.firstNameAndLastName,
                                    autoValidateMode: AutovalidateMode.onUserInteraction,
                                    validator: (fullName) => _editInformations.validateFullName(fullName),
                                    onChanged: (fullName) => _editInformations.fullName = fullName,
                                    focusNode: fullNameFocusNode,
                                  ),
                                ),
                                12.h.verticalSpace,
                                Observer(
                                  builder: (_) => InputTextField(
                                    hintText: S.current.emailAddress,
                                    controller: emailAddressTextEditingController,
                                    keyboardType: TextInputType.emailAddress,
                                    label: S.current.emailAddress,
                                    autoValidateMode: AutovalidateMode.onUserInteraction,
                                    validator: (email) => _editInformations.validateEmail(email),
                                    onChanged: (email) => _editInformations.emailAddress = email,
                                    focusNode: emailAddressFocusNode,
                                  ),
                                ),
                                12.h.verticalSpace,
                                Observer(
                                  builder: (_) => InputTextField(
                                    hintText: S.current.phoneNumber,
                                    controller: phoneNumberTextEditingController,
                                    keyboardType: TextInputType.phone,
                                    label: S.current.phoneNumber,
                                    autoValidateMode: AutovalidateMode.onUserInteraction,
                                    validator: (phoneNumber) =>
                                        _editInformations.validatePhoneNumber(phoneNumber: phoneNumber),
                                    onChanged: (phoneNumber) => _editInformations.phoneNumber = phoneNumber,
                                    focusNode: phoneNumberFocusNode,
                                  ),
                                ),
                                12.h.verticalSpace,
                                CustomDropDownButton(
                                  label: S.current.country,
                                  onTap: () {
                                    showModalBottomSheet(
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
                                      builder: (_) => CountriesSheet(countries: countriesList),
                                    );
                                  },
                                ),
                                12.h.verticalSpace,
                                CustomDropDownButton(label: S.current.region),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Observer(
                  builder: (_) => GradientElevatedButton(
                    onPressed: () => _editInformations.isEmailValid
                        ? _editInformations.handleEditPersonnalInformationOnClick(context)
                        : null,
                    isButtonEnabled: _editInformations.isFormValid,
                    child: Text(S.current.saveData),
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
