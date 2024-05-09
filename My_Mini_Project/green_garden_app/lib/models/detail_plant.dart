class DetailPlant {
  final int id;
  final String commonName;
  final List<String> scientificName;
  final String cycle;
  final String watering;
  final List<String> sunlight;
  final String description;
  final String originalImageUrl;

  DetailPlant({
    required this.id,
    required this.commonName,
    required this.scientificName,
    required this.cycle,
    required this.watering,
    required this.sunlight,
    required this.description,
    required this.originalImageUrl,
  });

  factory DetailPlant.fromJson(Map<String, dynamic> json) {
    return DetailPlant(
      id: json['id'],
      commonName: json['common_name'],
      scientificName: List<String>.from(json['scientific_name'].map((x) => x)),
      cycle: json['cycle'],
      watering: json['watering'],
      sunlight: List<String>.from(json['sunlight'].map((x) => x)),
      description: json['description'],
      originalImageUrl: json['default_image']['original_url'],
    );
  }
}
