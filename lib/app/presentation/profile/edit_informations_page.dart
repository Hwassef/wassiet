import 'package:flutter/material.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/widgets/widgets.dart';

class EditInformationsPage extends StatelessWidget {
  EditInformationsPage({Key? key}) : super(key: key);
  final TextEditingController testController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Form(
                child: Column(
                  children: [
                    InputTextField(
                      hintText: S.current.firstNameAndLastName,
                      controller: testController,
                      keyboardType: TextInputType.name,
                      label: S.current.firstNameAndLastName,
                    ),
                    const RequriedField(),
                    InputTextField(
                      hintText: S.current.emailAddress,
                      controller: testController,
                      keyboardType: TextInputType.emailAddress,
                      label: S.current.emailAddress,
                    ),
                    const RequriedField(),
                    InputTextField(
                      hintText: S.current.phoneNumber,
                      controller: testController,
                      keyboardType: TextInputType.phone,
                      label: S.current.phoneNumber,
                    ),
                    const RequriedField(),
                    InputTextField(
                      hintText: S.current.country,
                      controller: testController,
                      keyboardType: TextInputType.name,
                      label: S.current.country,
                    ),
                    const RequriedField(),
                    InputTextField(
                      hintText: S.current.region,
                      controller: testController,
                      keyboardType: TextInputType.name,
                      label: S.current.region,
                    ),
                    const RequriedField(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(S.current.saveData),
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
