import 'package:flutter/material.dart';
import 'package:wassiet/config/images/app_images.dart';
import 'package:wassiet/generated/l10n.dart';
import 'package:wassiet/utils/enums.dart';
import 'package:wassiet/widgets/widgets.dart';

class ContactUsPage extends StatelessWidget {
  ContactUsPage({Key? key}) : super(key: key);
  final TextEditingController firstAndLastName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                height: 40,
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomCircleAvtar(
                    socialMedia: SocialMedia.facebook,
                    image: AppImages.facebookIcon,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CustomCircleAvtar(
                    socialMedia: SocialMedia.twitter,
                    image: AppImages.twitterIcon,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CustomCircleAvtar(
                    socialMedia: SocialMedia.instagram,
                    image: AppImages.instagramIcon,
                  ),
                  SizedBox(
                    width: 16,
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
                    InputFormField(
                      hintText: S.current.firstNameAndLastName,
                      controller: firstAndLastName,
                      label: S.current.firstNameAndLastName,
                      keyboardType: TextInputType.name,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(S.current.requiredField),
                        ),
                      ],
                    ),
                    InputFormField(
                      hintText: S.current.emailAddress,
                      controller: firstAndLastName,
                      label: S.current.emailAddress,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(S.current.requiredField),
                        ),
                      ],
                    ),
                    InputFormField(
                      hintText: S.current.phoneNumber,
                      controller: firstAndLastName,
                      label: S.current.phoneNumber,
                      keyboardType: TextInputType.phone,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(S.current.requiredField),
                        ),
                      ],
                    ),
                    InputFormField(
                      hintText: S.current.subject,
                      controller: firstAndLastName,
                      label: S.current.subject,
                      keyboardType: TextInputType.text,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(S.current.requiredField),
                        ),
                      ],
                    ),
                    InputFormField(
                      hintText: S.current.messageText,
                      controller: firstAndLastName,
                      label: S.current.message,
                      keyboardType: TextInputType.text,
                      maxLines: 7,
                      minLines: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(S.current.requiredField),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
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
    );
  }
}
