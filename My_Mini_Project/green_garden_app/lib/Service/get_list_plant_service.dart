import 'package:dio/dio.dart';
import 'package:green_garden/models/plants_model.dart';

class GetListPlantService {
  Future<List<PlantModel>> fetchPlantData() async {
    try {
      Response response = await Dio().get(
          'https://perenual.com/api/species-list?key=sk-XVnP66274d86ccc3b5224');

      // Cek kode status respons
      if (response.statusCode == 200) {
        List<dynamic> data = response.data['data'];
        List<PlantModel> plant = data
            .map((plantJson) => PlantModel.fromJson(plantJson))
            .toList(); // Ubah data JSON menjadi objek PlantModel

        return plant;
      } else {
        throw Exception(
            'Error: Received invalid status code ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching plant data: $e');
    }
  }
}
