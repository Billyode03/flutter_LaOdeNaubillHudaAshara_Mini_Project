import 'package:dio/dio.dart';
import 'package:green_garden/models/detail_plant.dart';

class GetDetailPlantService {
  Future<DetailPlant> fetchDetailPlantData(int id) async {
    try {
      Response response = await Dio().get(
          'https://perenual.com/api/species/details/$id?key=sk-XVnP66274d86ccc3b5224');
      // Cek code status respons
      if (response.statusCode == 200) {
        print(response.data);
        return DetailPlant.fromJson(response.data);
      } else {
        throw Exception(
            'Error: Received invalid status code ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching detail plant data: $e');
    }
  }
}
