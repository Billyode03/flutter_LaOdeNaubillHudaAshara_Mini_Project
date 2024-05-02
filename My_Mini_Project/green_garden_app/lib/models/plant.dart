class PlantModels{
  final String plantId;
  final String imageURL;
  final String plantName;
  final String category;
  final double price;
  bool isFavorated;

  PlantModels({
    required this.plantId,
    required this.imageURL,
    required this.plantName,
    required this.category,
    required this.price,
    this.isFavorated = false,
  });
}