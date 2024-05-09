class DetailPlantModel {
  final String commonName;
  final String scientificName;
  final String cycle;
  final String watering;
  final List<String> sunlight;
  final String description;
  final String defaultImageUrl;

  DetailPlantModel({
    required this.commonName,
    required this.scientificName,
    required this.cycle,
    required this.watering,
    required this.sunlight,
    required this.description,
    required this.defaultImageUrl,
  });

  factory DetailPlantModel.fromJson(Map<String, dynamic> json) {
    return DetailPlantModel(
      commonName: json['common_name'],
      scientificName: (json['scientific_name'] as List).first,
      cycle: json['cycle'],
      watering: json['watering'],
      sunlight: List<String>.from(json['sunlight']),
      description: json['description'],
      defaultImageUrl: json['default_image']['regular_url'],
    );
  }
}
