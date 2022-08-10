import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/app/models/edit_my_informations.dart';
import 'package:wassiet/app/models/radio_button.dart';
import 'package:wassiet/app/domain/entities/country.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/utils/principal_functions.dart';
import 'package:wassiet/widgets/circled_flag.dart';
import 'package:wassiet/widgets/input_text_field.dart';

class CountriesSheet extends StatefulWidget {
  const CountriesSheet({Key? key}) : super(key: key);
  @override
  State<CountriesSheet> createState() => _CountriesSheetState();
}

class _CountriesSheetState extends State<CountriesSheet> {
  final TextEditingController searchCountryTextEditingController = TextEditingController();
  final FocusNode searchCountry = FocusNode();

  @override
  void initState() {
    editMyInformations.getAllCountries();

    super.initState();
  }

  final GlobalKey<FormFieldState> _formKey = GlobalKey<FormFieldState>();

  final RadioButton radioButtonBase = RadioButton();
  final EditMyInformations editMyInformations = EditMyInformations();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.9,
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
                child: Observer(
                  builder: (_) => InputTextField(
                    controller: searchCountryTextEditingController,
                    keyboardType: TextInputType.name,
                    label: S.current.searchForSomething,
                    focusNode: searchCountry,
                    onChanged: (String text) {
                      editMyInformations.searchWord = text;
                      editMyInformations.searchForCountry();
                    },
                  ),
                ),
              ),
            ),
            Observer(
              builder: (_) => editMyInformations.countries.isNotEmpty
                  ? Expanded(
                      child: RawScrollbar(
                        crossAxisMargin: 12,
                        thumbColor: AppColors.inactiveGreyColorLight,
                        scrollbarOrientation: ScrollbarOrientation.left,
                        radius: AppConstants.normalRadius,
                        child: ListView.builder(
                          key: Key(editMyInformations.countries.length.toString()),
                          physics: const BouncingScrollPhysics(),
                          itemCount: editMyInformations.countries.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: ((BuildContext context, index) {
                            final Country currentCountry = editMyInformations.countries[index];
                            return Card(
                              elevation: 0.0,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                child: GestureDetector(
                                  onTap: () => radioButtonBase.changeCurrentSelectedItem(name: currentCountry.name),
                                  child: ListTile(
                                    leading:
                                        CircledFlag(flag: getCountryFlag(countryCode: currentCountry.code), radius: 15),
                                    title: Text(
                                      currentCountry.name,
                                      style: Theme.of(context).textTheme.headline1,
                                    ),
                                    trailing: Observer(
                                      builder: (_) => GestureDetector(
                                        onTap: () {
                                          radioButtonBase.changeCurrentSelectedItem(name: currentCountry.name);
                                          context.popRoute();
                                        },
                                        child: Container(
                                          width: 32.0,
                                          height: 32.0,
                                          padding: EdgeInsets.all(
                                              radioButtonBase.selectedItemName == currentCountry.name ? 8.5 : 4.5),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: radioButtonBase.selectedItemName == currentCountry.name
                                                ? AppColors.darkCyanColor
                                                : AppColors.inactiveGreyColorLight,
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10.0),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    )
                  : Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 70.0),
                              child: Text(
                                'No result found correspending for ${editMyInformations.searchWord ?? ''}',
                                style: Theme.of(context).textTheme.headline1?.copyWith(height: 1.4),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
