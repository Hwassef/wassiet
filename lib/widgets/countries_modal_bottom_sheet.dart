import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/app/models/radio_button.dart';
import 'package:wassiet/app/view_models/country.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/utils/principal_functions.dart';
import 'package:wassiet/widgets/circled_flag.dart';
import 'package:wassiet/widgets/custom_radio_button.dart';
import 'package:wassiet/widgets/input_text_field.dart';

class CountriesSheet extends StatefulWidget {
  const CountriesSheet({
    Key? key,
    required this.countries,
  }) : super(key: key);
  final List<Country> countries;
  @override
  State<CountriesSheet> createState() => _CountriesSheetState();
}

class _CountriesSheetState extends State<CountriesSheet> {
  final TextEditingController searchCountryTextEditingController = TextEditingController();
  final FocusNode searchCountry = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  final RadioButton radioButtonBase = RadioButton();

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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: InputTextField(
                controller: searchCountryTextEditingController,
                keyboardType: TextInputType.name,
                label: S.current.searchForSomething,
                focusNode: searchCountry,
              ),
            ),
            Expanded(
              child: RawScrollbar(
                crossAxisMargin: 12,
                thumbColor: AppColors.inactiveGreyColorLight,
                scrollbarOrientation: ScrollbarOrientation.left,
                radius: AppConstants.normalRadius,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: widget.countries.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: ((BuildContext context, index) {
                    if (widget.countries.isNotEmpty) {
                      final Country currentCountry = widget.countries[index];
                      return Card(
                        elevation: 0.0,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: GestureDetector(
                            onTap: () => radioButtonBase.changeCurrentSelectedItem(selectedItem: index),
                            child: ListTile(
                              leading: CircledFlag(flag: getCountryFlag(countryCode: currentCountry.code), radius: 15),
                              title: Text(
                                currentCountry.name,
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              trailing: Observer(
                                builder: (_) => CustomRadioBtn(
                                  label: currentCountry.name,
                                  selectedIndex: index,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
