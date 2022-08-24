import 'package:flutter/material.dart';
import 'package:wassiet/config/images/app_images.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/utils/enums.dart';
import 'package:wassiet/widgets/widgets.dart';

class ContactUsPage extends StatelessWidget {
  ContactUsPage({Key? key}) : super(key: key);
  final TextEditingController firstAndLastNameTextEditingController = TextEditingController();
  final FocusNode firstAndLastNameFocusNode = FocusNode();
  final TextEditingController emailAddressTextEditingController = TextEditingController();
  final FocusNode emailAddressFocusNode = FocusNode();
  final TextEditingController phoneNumberTextEditingController = TextEditingController();
  final FocusNode phoneNumberFocusNode = FocusNode();
  final TextEditingController subjectTextEditingController = TextEditingController();
  final FocusNode subjectFocusNode = FocusNode();
  final TextEditingController messageTextEditingController = TextEditingController();
  final FocusNode messageTextFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 70.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomBackButton(),
                Text(
                  S.of(context).contactUs,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
            const UnderlinedText(),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          S.current.viaSocialMedia,
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Wrap(
                      spacing: 12.0,
                      children: const [
                        CustomCircleAvtar(
                          socialMedia: SocialMedia.facebook,
                          image: AppImages.facebookIcon,
                        ),
                        CustomCircleAvtar(
                          socialMedia: SocialMedia.twitter,
                          image: AppImages.twitterIcon,
                        ),
                        CustomCircleAvtar(
                          socialMedia: SocialMedia.instagram,
                          image: AppImages.instagramIcon,
                        ),
                        CustomCircleAvtar(
                          socialMedia: SocialMedia.whatsapp,
                          image: AppImages.whatsappIcon,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Text(
                          S.current.viaEmail,
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ],
                    ),
                    Form(
                      child: Column(
                        children: [
                          InputTextField(
                            hintText: S.current.firstNameAndLastName,
                            controller: firstAndLastNameTextEditingController,
                            label: S.current.firstNameAndLastName,
                            keyboardType: TextInputType.name,
                            focusNode: firstAndLastNameFocusNode,
                          ),
                          InputTextField(
                            hintText: S.current.emailAddress,
                            controller: emailAddressTextEditingController,
                            label: S.current.emailAddress,
                            keyboardType: TextInputType.emailAddress,
                            focusNode: emailAddressFocusNode,
                          ),
                          InputTextField(
                            hintText: S.current.phoneNumber,
                            controller: phoneNumberTextEditingController,
                            label: S.current.phoneNumber,
                            keyboardType: TextInputType.phone,
                            focusNode: phoneNumberFocusNode,
                          ),
                          InputTextField(
                            hintText: S.current.subject,
                            controller: subjectTextEditingController,
                            label: S.current.subject,
                            keyboardType: TextInputType.text,
                            focusNode: subjectFocusNode,
                          ),
                          InputTextField(
                            hintText: S.current.messageText,
                            controller: messageTextEditingController,
                            label: S.current.message,
                            keyboardType: TextInputType.text,
                            maxLines: 7,
                            minLines: 7,
                            focusNode: messageTextFocusNode,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(S.current.send),
                          )
                        ],
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
