import 'package:flutter/material.dart';
import 'package:wassiet/generated/l10n.dart';

import 'package:wassiet/widgets/widgets.dart';

class UsingTermsPage extends StatelessWidget {
  const UsingTermsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomBackButton(),
                    Text(
                      S.current.termsOfService,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                ),
                const UnderlinedText(),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Text(S.current.aboutOurServices),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
