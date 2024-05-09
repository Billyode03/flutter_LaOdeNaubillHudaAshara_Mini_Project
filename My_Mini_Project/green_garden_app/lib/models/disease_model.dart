// class DiseaseModel {
//   final int id;
//   final String commonName;
//   final String scientificName;
//   final List<String>? otherName;
//   final List<DiseaseDescriptionModel> description;
//   final List<DiseaseSolutionModel> solution;
//   final List<String>? host;
//   final List<DiseaseImageModel> images;

//   DiseaseModel({
//     required this.id,
//     required this.commonName,
//     required this.scientificName,
//     this.otherName,
//     required this.description,
//     required this.solution,
//     this.host,
//     required this.images,
//   });

//   factory DiseaseModel.fromJson(Map<String, dynamic> json) {

//     List<dynamic> descriptionJson = json['description'] ?? [];
//     List<DiseaseDescriptionModel> description = descriptionJson
//         .map((descriptionJson) =>
//             DiseaseDescriptionModel.fromJson(descriptionJson))
//         .toList();

//     List<dynamic> solutionJson = json['solution'] ?? [];
//     List<DiseaseSolutionModel> solution = solutionJson
//         .map((solutionJson) => DiseaseSolutionModel.fromJson(solutionJson))
//         .toList();

        

//     List<dynamic> imagesJson = json['images'] ?? [];
//     List<DiseaseImageModel> images = imagesJson
//         .map((imagesJson) => DiseaseImageModel.fromJson(imagesJson))
//         .toList();

//     return DiseaseModel(
//       id: json['id'],
//       commonName: json['common_name'],
//       scientificName: json['scientific_name'],
//       otherName: json['other_name'] != null
//           ? List<String>.from(json['other_name'])
//           : null,
//       description: description,
//       solution: solution,
//       host: json['host'] != null ? List<String>.from(json['host']) : null,
//       images: images,
//     );
//   }
// }

import 'dart:ui';

// class DiseaseDescriptionModel {
//   final String subtitle;
//   final String description;

//   DiseaseDescriptionModel({
//     required this.subtitle,
//     required this.description,
//   });

//   factory DiseaseDescriptionModel.fromJson(Map<String, dynamic> json) {
//     return DiseaseDescriptionModel(
//       subtitle: json['subtitle'],
//       description: json['description'],
//     );
//   }
// }

// class DiseaseSolutionModel {
//   final String subtitle;
//   final String description;

//   DiseaseSolutionModel({
//     required this.subtitle,
//     required this.description,
//   });

//   factory DiseaseSolutionModel.fromJson(Map<String, dynamic> json) {
//     return DiseaseSolutionModel(
//       subtitle: json['subtitle'],
//       description: json['description'],
//     );
//   }
// }

// class DiseaseImageModel {
//   final int license;
//   final String licenseName;
//   final String licenseUrl;
//   final String originalUrl;
//   final String regularUrl;
//   final String mediumUrl;
//   final String smallUrl;
//   final String thumbnail;

//   DiseaseImageModel({
//     required this.license,
//     required this.licenseName,
//     required this.licenseUrl,
//     required this.originalUrl,
//     required this.regularUrl,
//     required this.mediumUrl,
//     required this.smallUrl,
//     required this.thumbnail,
//   });

//   factory DiseaseImageModel.fromJson(Map<String, dynamic> json) {
//     return DiseaseImageModel(
//       license: json['license'],
//       licenseName: json['license_name'],
//       licenseUrl: json['license_url'],
//       originalUrl: json['original_url'],
//       regularUrl: json['regular_url'],
//       mediumUrl: json['medium_url'],
//       smallUrl: json['small_url'],
//       thumbnail: json['thumbnail'],
//     );
//   }
// }


class DiseaseModel {
    final int id;
    final String commonName;
    final String scientificName;
    final List<String>? otherName;
    final dynamic family;
    final List<DiseaseDescSoluPlant> description;
    final List<DiseaseDescSoluPlant> solution;
    final List<String> host;
    final List<DiseaseImage> images;

    DiseaseModel({
        required this.id,
        required this.commonName,
        required this.scientificName,
        required this.otherName,
        required this.family,
        required this.description,
        required this.solution,
        required this.host,
        required this.images,
    });

    factory DiseaseModel.fromJson(Map<String, dynamic> json) => DiseaseModel(
        id: json["id"],
        commonName: json["common_name"],
        scientificName: json["scientific_name"],
        otherName: json["other_name"] == null ? [] : List<String>.from(json["other_name"]!.map((x) => x)),
        family: json["family"],
        description: List<DiseaseDescSoluPlant>.from(json["description"].map((x) => DiseaseDescSoluPlant.fromJson(x))),
        solution: List<DiseaseDescSoluPlant>.from(json["solution"].map((x) => DiseaseDescSoluPlant.fromJson(x))),
        host: List<String>.from(json["host"].map((x) => x)),
        images: List<DiseaseImage>.from(json["images"].map((x) => DiseaseImage.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "common_name": commonName,
        "scientific_name": scientificName,
        "other_name": otherName == null ? [] : List<dynamic>.from(otherName!.map((x) => x)),
        "family": family,
        "description": List<dynamic>.from(description.map((x) => x.toJson())),
        "solution": List<dynamic>.from(solution.map((x) => x.toJson())),
        "host": List<dynamic>.from(host.map((x) => x)),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
    };
}

class DiseaseDescSoluPlant {
    String subtitle;
    String description;

    DiseaseDescSoluPlant({
        required this.subtitle,
        required this.description,
    });

    factory DiseaseDescSoluPlant.fromJson(Map<String, dynamic> json) => DiseaseDescSoluPlant(
        subtitle: json["subtitle"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "subtitle": subtitle,
        "description": description,
    };
}

class DiseaseImage {
    final int license;
    final String licenseName;
    final String licenseUrl;
    final String originalUrl;
    final String regularUrl;
    final String mediumUrl;
    final String smallUrl;
    final String thumbnail;

    DiseaseImage({
        required this.license,
        required this.licenseName,
        required this.licenseUrl,
        required this.originalUrl,
        required this.regularUrl,
        required this.mediumUrl,
        required this.smallUrl,
        required this.thumbnail,
    });

    factory DiseaseImage.fromJson(Map<String, dynamic> json) => DiseaseImage(
        license: json["license"],
        licenseName: json['license_name'],
        licenseUrl: json["license_url"],
        originalUrl: json["original_url"],
        regularUrl: json["regular_url"],
        mediumUrl: json["medium_url"],
        smallUrl: json["small_url"],
        thumbnail: json["thumbnail"],
    );

    Map<String, dynamic> toJson() => {
        "license": license,
        "license_name": [licenseName],
        "license_url": licenseUrl,
        "original_url": originalUrl,
        "regular_url": regularUrl,
        "medium_url": mediumUrl,
        "small_url": smallUrl,
        "thumbnail": thumbnail,
    };
}