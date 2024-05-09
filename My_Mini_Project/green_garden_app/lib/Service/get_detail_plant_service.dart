import 'package:dio/dio.dart';
import 'package:green_garden/models/detail_plant.dart';

// class PlantDetailService {
//   final String baseUrl = "https://perenual.com/api/";
//   final String apiKey = "sk-XVnP66274d86ccc3b5224";

//   Future<DetailPlantModel> fetchPlantDetailById(int id) async {
//     try {
//       final dio = Dio(BaseOptions(baseUrl: baseUrl));
//       final response = await dio
//           .get('/species/details/$id', queryParameters: {'key': apiKey});

//       if (response.statusCode == 200) {
//         return response.data;
//       } else {
//         throw Exception('Failed to load plant detail');
//       }
//     } catch (e) {
//       throw Exception('Error: $e');
//     }
//   }
// }

