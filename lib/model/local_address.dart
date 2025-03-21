import 'package:json_annotation/json_annotation.dart';


part 'local_address.g.dart';


// copy here: https://raw.githubusercontent.com/madnh/hanhchinhvn/master/dist/tree.json
// cmd update model: flutter packages pub run build_runner build --delete-conflicting-outputs


@JsonSerializable()
class Province {
  final String name;
  final String slug;
  final String name_with_type;
  final String code;
  final String type;

  @JsonKey(ignore: true)
  List<District> districts;


  Province({this.name, this.slug, this.name_with_type, this.code, this.type, this.districts});

  factory Province.fromJson(Map<String, dynamic> json) {
    final item = _$ProvinceFromJson(json);
    return item;
  }
  Map<String, dynamic> toJson() => _$ProvinceToJson(this);

}

@JsonSerializable()
class District { //Wards

  final String name;
  final String slug;
  final String path_with_type;
  final String name_with_type;
  final String code;
  final String type;

  @JsonKey(ignore: true)
  List<Wards> wards;



  District({this.name, this.slug, this.path_with_type, this.name_with_type, this.code, this.type, this.wards});

  factory District.fromJson(Map<String, dynamic> json) {
    final item = _$DistrictFromJson(json);
    return item;
  }
  Map<String, dynamic> toJson() => _$DistrictToJson(this);
}


@JsonSerializable()
class Wards { //Wards

  final String name;
  final String slug;
  final String path_with_type;
  final String name_with_type;
  final String code;
  final String type;



  Wards({this.name, this.slug, this.path_with_type, this.name_with_type, this.code, this.type});

  factory Wards.fromJson(Map<String, dynamic> json) {
    final item = _$WardsFromJson(json);
    return item;
  }
  Map<String, dynamic> toJson() => _$WardsToJson(this);
}