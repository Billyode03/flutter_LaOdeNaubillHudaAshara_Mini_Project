import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:green_garden/models/plant.dart';
import 'package:green_garden/models/plants.dart';

class PlantApiService {
  final Dio _dio = Dio();

  Future<List<PlantModels>> fetchPlantData() async {
    try {
      Response response = await _dio.get(
        'https://perenual.com/api/species-list?key=sk-XVnP66274d86ccc3b5224',
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.toString());
        final List<dynamic> data = jsonData['data'];
        List<PlantModels> plantList = [];
        for (var plantData in data) {
          PlantModels plant = PlantModels.fromJson(plantData);
          plantList.add(plant);
        }
        return plantList;
      } else {
        throw Exception('Error fetching plant data: Status code ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Error fetching plant data: $error');
    }
  }
}

// Example usage in your widget
class PlantListWidget extends StatefulWidget {
  const PlantListWidget({super.key});

  @override
  State<PlantListWidget> createState() => _PlantListWidgetState();
}

class _PlantListWidgetState extends State<PlantListWidget> {
  List<PlantModels> _plantList = [];

  @override
  void initState() {
    _fetchPlantData();
    super.initState();
  }

  Future<void> _fetchPlantData() async {
    try {
      final plantList = await PlantApiService().fetchPlantData();
      setState(() {
        _plantList = plantList;
      });
    } catch (error) {
      print('Error fetching plant data: $error');
      // Handle error in UI (e.g., show error message)
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // Your widget code here
    );
  }
}