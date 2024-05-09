class PlantModel {
  final int id;
  final String commonName;
  final String scientificName;
  final List<String> otherName;
  final String cycle;
  final String watering;
  final List<String> sunlight;
  final String defaultImage;

  PlantModel({
    required this.id,
    required this.commonName,
    required this.scientificName,
    required this.otherName,
    required this.cycle,
    required this.watering,
    required this.sunlight,
    required this.defaultImage,
  });

  factory PlantModel.fromJson(Map<String, dynamic> json) {
    return PlantModel(
      id: json['id'],
      commonName: json['common_name'],
      scientificName: json['scientific_name'][0],
      otherName: List<String>.from(json['other_name']),
      cycle: json['cycle'],
      watering: json['watering'],
      sunlight: List<String>.from(json['sunlight']),
      defaultImage: json['default_image'] != null
          ? json['default_image']['regular_url']
          : '',
    );
  }
}
