// import 'dart:convert';

// import 'package:flutter/services.dart';
// import 'package:wassiet/app/data/models/country_model.dart';

// abstract class GetAllCountriesRemoteDataSource {
//   Future<List<CountryModel>> getAllCountries();
// }

// class GetAllCountriesRemoteDataSourceImpl implements GetAllCountriesRemoteDataSource {
//   @override
//   Future<List<CountryModel>> getAllCountries() async {
//     final response = await rootBundle.loadString('assets/fake_data/countries.json');
//     final json = jsonDecode(response) as List;
//     return json.map((object) => CountryModel.fromJson(object)).toList();
//   }
// }
