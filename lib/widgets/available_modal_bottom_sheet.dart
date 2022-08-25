import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/app/features/create_announcement_fourth_step/domain/entities/available_item.dart';
import 'package:wassiet/app/models/create_announcement_fourth_step_vm.dart';
import 'package:wassiet/app/models/radio_button.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/widgets.dart';

class AvailableModalBottomSheet extends StatefulWidget {
  const AvailableModalBottomSheet({
    Key? key,
    required this.callBack,
  }) : super(key: key);
  final Function callBack;

  @override
  State<AvailableModalBottomSheet> createState() => _AvailableModalBottomSheetState();
}

class _AvailableModalBottomSheetState extends State<AvailableModalBottomSheet> {
  final GlobalKey<FormFieldState> _formKey = GlobalKey<FormFieldState>();
  final TextEditingController searchAvailableTextEditingController = TextEditingController();
  final FocusNode searchAvailableFocusNode = FocusNode();
  final CreateAnnouncementFourthStepVM createAnnouncementFourthStepVM = CreateAnnouncementFourthStepVM();
  final RadioButton radioButtonBase = RadioButton();
  @override
  void initState() {
    createAnnouncementFourthStepVM.getAllAvailables();
    super.initState();
  }

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
                    controller: searchAvailableTextEditingController,
                    keyboardType: TextInputType.name,
                    label: S.current.searchForSomething,
                    focusNode: searchAvailableFocusNode,
                    isRequired: false,
                    onChanged: (String text) {
                      // editMyInformations.searchWord = text;
                      // editMyInformations.searchForCountry();
                    },
                  ),
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: createAnnouncementFourthStepVM.selectedAvailible.length,
                itemBuilder: (BuildContext context, index) {
                  final AvailableItem currentSelectedItem = createAnnouncementFourthStepVM.selectedAvailible[index];
                  return SelectedAvailableChip(
                    label: currentSelectedItem.name,
                    onDeleted: () {
                      createAnnouncementFourthStepVM.removeSelectedAvailable(index: index);
                      setState(() {});
                    },
                  );
                }),
            Observer(
              builder: (_) => createAnnouncementFourthStepVM.availableList.isNotEmpty
                  ? Expanded(
                      child: RawScrollbar(
                        crossAxisMargin: 12,
                        thumbColor: AppColors.inactiveGreyColorLight,
                        scrollbarOrientation: ScrollbarOrientation.left,
                        radius: AppConstants.normalRadius,
                        child: ListView.builder(
                          key: Key(createAnnouncementFourthStepVM.availableList.length.toString()),
                          physics: const BouncingScrollPhysics(),
                          itemCount: createAnnouncementFourthStepVM.availableList.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: ((BuildContext context, index) {
                            final AvailableItem currentCountry = createAnnouncementFourthStepVM.availableList[index];
                            return Card(
                              elevation: 0.0,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                child: Observer(
                                  builder: (_) => GestureDetector(
                                    onTap: () {
                                      createAnnouncementFourthStepVM.checkBoxOnChange(
                                        index: index,
                                        isSelected: !currentCountry.isSelected,
                                      );
                                      setState(() {});
                                    },
                                    child: ListTile(
                                      title: Text(
                                        currentCountry.name,
                                        style: Theme.of(context).textTheme.headline1,
                                      ),
                                      trailing: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5.w,
                                          vertical: 5.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: currentCountry.isSelected
                                              ? AppColors.darkCyanColor
                                              : AppColors.whiteColor,
                                          borderRadius: const BorderRadius.all(Radius.circular(6)),
                                          border: currentCountry.isSelected
                                              ? null
                                              : Border.all(
                                                  color: !currentCountry.isSelected
                                                      ? AppColors.inactiveGreyColorLight
                                                      : Colors.transparent,
                                                ),
                                        ),
                                        height: 32,
                                        width: 32,
                                        child: currentCountry.isSelected
                                            ? Image.asset(
                                                AppImages.tickIcon,
                                                color: AppColors.whiteColor,
                                                fit: BoxFit.contain,
                                              )
                                            : null,
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
                                '',
                                // 'No result found correspending for ${editMyInformations.searchWord ?? ''}',
                                style: Theme.of(context).textTheme.headline1?.copyWith(height: 1.4),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
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
