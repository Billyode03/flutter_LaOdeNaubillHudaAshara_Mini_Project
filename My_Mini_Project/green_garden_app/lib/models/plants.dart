class PlantModels {
  final int id;
  final String commonName;
  final List<String> scientificName;
  final List<String> otherName;
  final String cycle;
  final String watering;
  final List<String> sunlight;
  final ImageData imageData; // Use ImageData for image details

  PlantModels({
    required this.id,
    required this.commonName,
    required this.scientificName,
    required this.otherName,
    required this.cycle,
    required this.watering,
    required this.sunlight,
    required this.imageData,
  });

  factory PlantModels.fromJson(Map<String, dynamic> json) => PlantModels(
        id: json['id'],
        commonName: json['common_name'],
        scientificName: json['scientific_name'].cast<String>(), // Cast to List<String>
        otherName: json['other_name'].cast<String>(),   // Cast to List<String>
        cycle: json['cycle'],
        watering: json['watering'],
        sunlight: json['sunlight'].cast<String>(),     // Cast to List<String>
        imageData: ImageData.fromJson(json['default_image']),
      );
}

class ImageData {
  final int license;
  final String licenseName;
  final String licenseUrl;
  final String originalUrl;
  final String regularUrl;
  final String mediumUrl;
  final String smallUrl;
  final String thumbnail;

  ImageData({
    required this.license,
    required this.licenseName,
    required this.licenseUrl,
    required this.originalUrl,
    required this.regularUrl,
    required this.mediumUrl,
    required this.smallUrl,
    required this.thumbnail,
  });

  factory ImageData.fromJson(Map<String, dynamic> json) => ImageData(
        license: json['license'],
        licenseName: json['license_name'],
        licenseUrl: json['license_url'],
        originalUrl: json['original_url'],
        regularUrl: json['regular_url'],
        mediumUrl: json['medium_url'],
        smallUrl: json['small_url'],
        thumbnail: json['thumbnail'],
      );
}