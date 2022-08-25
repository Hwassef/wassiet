import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/app/models/radio_button.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/utils/utils.dart';
import 'package:wassiet/widgets/widgets.dart';

class CurrenciesModalBottomSheet extends StatefulWidget {
  const CurrenciesModalBottomSheet({
    Key? key,
    required this.callBack,
  }) : super(key: key);
  final Function callBack;

  @override
  State<CurrenciesModalBottomSheet> createState() => _CurrenciesModalBottomSheetState();
}

class _CurrenciesModalBottomSheetState extends State<CurrenciesModalBottomSheet> {
  final TextEditingController searchCurrencyTextEditingController = TextEditingController();
  final FocusNode searchCurrencyFocusNode = FocusNode();
  final GlobalKey<FormFieldState> _formKey = GlobalKey<FormFieldState>();
  // final CreateAnnouncementSecondStepVM createAnnouncementSecondStepVM = CreateAnnouncementSecondStepVM();
  final RadioButton radioButtonBase = RadioButton();
  @override
  void initState() {
    // createAnnouncementSecondStepVM.getAllCurrencies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme theme = Theme.of(context).textTheme;
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
                    controller: searchCurrencyTextEditingController,
                    keyboardType: TextInputType.name,
                    label: S.current.searchForSomething,
                    focusNode: searchCurrencyFocusNode,
                    isRequired: false,
                    onChanged: (String text) {
                      // editMyInformations.searchWord = text;
                      // editMyInformations.searchForCountry();
                    },
                  ),
                ),
              ),
            ),
            // Observer(
            //   builder: (_) => createAnnouncementSecondStepVM.currencies.isNotEmpty
            //       ? Expanded(
            //           child: RawScrollbar(
            //             crossAxisMargin: 12,
            //             thumbColor: AppColors.inactiveGreyColorLight,
            //             scrollbarOrientation: ScrollbarOrientation.left,
            //             radius: AppConstants.normalRadius,
            //             child: ListView.builder(
            //               key: Key(createAnnouncementSecondStepVM.currencies.length.toString()),
            //               physics: const BouncingScrollPhysics(),
            //               itemCount: createAnnouncementSecondStepVM.currencies.length,
            //               shrinkWrap: true,
            //               scrollDirection: Axis.vertical,
            //               itemBuilder: ((BuildContext context, index) {
            //                 final Currency currentCountry = createAnnouncementSecondStepVM.currencies[index];
            //                 return Card(
            //                   elevation: 0.0,
            //                   child: Padding(
            //                     padding: EdgeInsets.symmetric(horizontal: 8.w),
            //                     child: Observer(
            //                       builder: (_) => GestureDetector(
            //                         onTap: () => radioButtonBase.changeCurrentSelectedItem(name: currentCountry.name),
            //                         child: ListTile(
            //                           leading: CircledFlag(
            //                             flag: getCountryFlag(
            //                               countryCode: currentCountry.code[0] + currentCountry.code[1],
            //                             ),
            //                             radius: 15,
            //                           ),
            //                           title: Text(
            //                             currentCountry.name,
            //                             style: theme.headline1,
            //                           ),
            //                           trailing: Container(
            //                             width: 32.0,
            //                             height: 32.0,
            //                             padding: EdgeInsets.all(
            //                                 radioButtonBase.selectedItemName == currentCountry.name ? 8.5 : 4.5),
            //                             decoration: BoxDecoration(
            //                               shape: BoxShape.circle,
            //                               color: radioButtonBase.selectedItemName == currentCountry.name
            //                                   ? AppColors.darkCyanColor
            //                                   : AppColors.inactiveGreyColorLight,
            //                             ),
            //                             child: Container(
            //                               decoration: BoxDecoration(
            //                                 borderRadius: BorderRadius.circular(10.0),
            //                                 color: Colors.white,
            //                               ),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 );
            //               }),
            //             ),
            //           ),
            //         )
            //       : Expanded(
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               Expanded(
            //                 child: Padding(
            //                   padding: const EdgeInsets.symmetric(horizontal: 70.0),
            //                   child: Text(
            //                     '',
            //                     // 'No result found correspending for ${editMyInformations.searchWord ?? ''}',

            //                     style: theme.headline1?.copyWith(height: 1.4),
            //                     textAlign: TextAlign.center,
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            // ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 24.0),
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 50,
                      blurRadius: 40,
                    ),
                  ],
                ),
                child: GradientElevatedButton(
                  isButtonEnabled: true,
                  onPressed: () {
                    widget.callBack(radioButtonBase.selectedItemName);
                    context.popRoute();
                  },
                  child: Text(S.current.confirm),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
