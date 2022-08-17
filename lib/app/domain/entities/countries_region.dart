import 'package:wassiet/app/domain/entities/region.dart';

class CountriesRegion {
  final String countryName;
  final String countryShortCode;
  final List<Region> regions;
  CountriesRegion({
    required this.countryName,
    required this.countryShortCode,
    required this.regions,
  });
  factory CountriesRegion.fromJson(Map<String, dynamic> json) {
    final countryName = json["countryName"] as String;
    final countryShortCode = json["countryShortCode"] as String;
    final regions = List<Region>.from(json["regions"].map((e) => Region.fromJson(e)));
    return CountriesRegion(countryName: countryName, countryShortCode: countryShortCode, regions: regions);
  }
}
