import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:green_garden/models/disease_model.dart';

class GetDiseasePlantService {
  Future<List<DiseaseModel>> fetchDiseaseData() async {
    try {
      Response response = await Dio().get(
          'https://perenual.com/api/pest-disease-list?key=sk-XVnP66274d86ccc3b5224');
      print(response.data);
      List<dynamic> data = response.data['data'];
      List<DiseaseModel> diseaseList = data
          .map((diseaseJson) => DiseaseModel.fromJson(diseaseJson))
          .toList();

      return diseaseList;
    } catch (e) {
      throw Exception('Error fetching disease data: $e');
    }
  }
}


