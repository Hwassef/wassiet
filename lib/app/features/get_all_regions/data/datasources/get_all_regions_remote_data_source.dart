import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:wassiet/app/features/get_all_regions/domain/entities/region.dart';

abstract class GetAllRegionsRemoteDataSource {
  Future<List<Region>> getAllRegions();
}

class GetAllRegionsRemoteDataSourceImpl implements GetAllRegionsRemoteDataSource {
  @override
  Future<List<Region>> getAllRegions() async {
    final response = await rootBundle.loadString('assets/fake_data/regions.json');
    final json = jsonDecode(response) as List;
    // List<CountriesRegion> regions = json.map((object) => CountriesRegion.fromJson(object)).toList();
    // return regions.where((CountriesRegion element) => element.countryName == countryName).first;
    return <Region>[];
  }
}
