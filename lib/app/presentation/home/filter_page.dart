import 'package:flutter/material.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/input_text_field.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  final TextEditingController spaceRangeFromTextEditingController = TextEditingController();

  final FocusNode spaceRangeFromFocusNode = FocusNode();

  final TextEditingController spaceRangeToTextEditingController = TextEditingController();

  final FocusNode spaceRangeToFocusNode = FocusNode();

  final TextEditingController totalPriceRangeFromTextEditingController = TextEditingController();

  final FocusNode totalPriceRangeFromFocusNode = FocusNode();

  final TextEditingController totalPriceRangeToTextEditingController = TextEditingController();

  final FocusNode totalPriceRangeToFocusNode = FocusNode();

  final TextEditingController squareMeterPriceRangeFromTextEditingController = TextEditingController();

  final FocusNode squareMeterPriceRangeFromFocusNode = FocusNode();

  final TextEditingController squareMeterPriceRangeToTextEditingController = TextEditingController();

  final FocusNode squareMeterPriceRangeToFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Column(
              children: [
                /// Countries
                // CustomDropDownButton(),

                // /// Regions
                // CustomDropDownButton(),

                // /// Cities
                // CustomDropDownButton(),

                // /// Street addresses
                // CustomDropDownButton(),

                // /// Purpose of announcement
                // CustomDropDownButton(),

                // /// Property type
                // CustomDropDownButton(),
                Form(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: InputTextField(
                              controller: spaceRangeFromTextEditingController,
                              keyboardType: TextInputType.number,
                              focusNode: spaceRangeFromFocusNode,
                              label: S.current.spaceRange,
                              isRequired: false,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              'to',
                            ),
                          ),
                          Expanded(
                            child: InputTextField(
                              controller: spaceRangeToTextEditingController,
                              keyboardType: TextInputType.number,
                              focusNode: spaceRangeToFocusNode,
                              label: '',
                              isRequired: false,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: InputTextField(
                              controller: totalPriceRangeFromTextEditingController,
                              keyboardType: TextInputType.number,
                              focusNode: totalPriceRangeFromFocusNode,
                              label: S.current.totalPriceRange,
                              isRequired: false,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              'to',
                            ),
                          ),
                          Expanded(
                            child: InputTextField(
                              controller: totalPriceRangeToTextEditingController,
                              keyboardType: TextInputType.number,
                              focusNode: totalPriceRangeToFocusNode,
                              label: '',
                              isRequired: false,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: InputTextField(
                              controller: squareMeterPriceRangeFromTextEditingController,
                              keyboardType: TextInputType.number,
                              focusNode: squareMeterPriceRangeFromFocusNode,
                              label: S.current.squareMeterPriceRange,
                              isRequired: false,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              'to',
                            ),
                          ),
                          Expanded(
                            child: InputTextField(
                              controller: squareMeterPriceRangeToTextEditingController,
                              keyboardType: TextInputType.number,
                              focusNode: squareMeterPriceRangeToFocusNode,
                              label: '',
                              isRequired: false,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24),
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
      ),
    );
  }
}
