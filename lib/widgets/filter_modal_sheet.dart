import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassiet/app/domain/entities/filter_by.dart';
import 'package:wassiet/app/domain/entities/order_by.dart';
import 'package:wassiet/app/models/filter.dart';
import 'package:wassiet/config/config.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/custom_checkbox.dart';
import 'package:wassiet/widgets/custom_radio_button.dart';

class FilterModalBottomSheet extends StatefulWidget {
  const FilterModalBottomSheet({Key? key}) : super(key: key);

  @override
  State<FilterModalBottomSheet> createState() => _FilterModalBottomSheetState();
}

class _FilterModalBottomSheetState extends State<FilterModalBottomSheet> {
  bool isSelected = false;
  final Filter filterBase = Filter();
  @override
  void initState() {
    filterBase.getAllFilters();
    filterBase.getAllOrderByFilters();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fill,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 70.0,
                  height: 8,
                  margin: const EdgeInsets.only(top: 11, bottom: 21),
                  decoration: const BoxDecoration(
                      borderRadius: AppConstants.normalBorderRadius, color: AppColors.inactiveGreyColorLight),
                ),
              ),
              Text(
                S.current.filterBy,
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: 16.sp,
                    ),
              ),
              8.h.verticalSpace,
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: filterBase.filters.length,
                  itemBuilder: (context, index) {
                    final FilterBy currentFilterItem = filterBase.filters[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          Observer(
                            builder: (_) => CustomCheckBox(
                              value: currentFilterItem.isSelected,
                              onChanged: (bool value) => setState(() {
                                filterBase.handleFilterOnChange(currentItemIndex: index, isSelected: value);
                              }),
                              checkedIcon: AppImages.tickIcon,
                            ),
                          ),
                          8.w.horizontalSpace,
                          Text(
                            currentFilterItem.filterByName,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                    );
                  }),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 26),
                child: Text(
                  'Order By',
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                        fontSize: 16.sp,
                      ),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: filterBase.orders.length,
                  itemBuilder: (context, index) {
                    final OrderBy currentOrderByItem = filterBase.orders[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          Observer(
                            builder: (_) => CustomRadioBtn(
                              label: currentOrderByItem.name,
                              value: currentOrderByItem.isSelected,
                              onChanged: (bool value) => setState(() {
                                filterBase.handleOrderByOnChange(
                                    isSelected: value, orderByName: currentOrderByItem.name);
                              }),
                            ),
                          ),
                          8.w.horizontalSpace,
                          Text(
                            currentOrderByItem.name,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                    );
                  }),
              Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(S.current.reset),
                      ),
                    ),
                    16.w.horizontalSpace,
                    Expanded(
                      child: ElevatedButton(
                        child: Text(S.current.confirm),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
