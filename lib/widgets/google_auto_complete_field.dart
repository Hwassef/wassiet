import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:wassiet/config/config.dart';

class GoogleAutoCompleteField extends StatefulWidget {
  const GoogleAutoCompleteField({Key? key}) : super(key: key);

  @override
  State<GoogleAutoCompleteField> createState() => _GoogleAutoCompleteFieldState();
}

class _GoogleAutoCompleteFieldState extends State<GoogleAutoCompleteField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlacesAutocompleteField(
          apiKey: AppConstants.GOOGLE_MAP_API_KEY,
        ),
      ],
    );
  }
}
