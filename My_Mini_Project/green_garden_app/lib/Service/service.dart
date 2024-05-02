// import 'dart:convert';

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:green_garden/models/plant.dart';
// import 'package:green_garden/models/plants.dart';

// class PlantApiService {
//   final Dio _dio = Dio();

//   Future<List<PlantModels>> fetchPlantData() async {
//     try {
//       Response response = await _dio.get(
//         'https://perenual.com/api/species-list?key=sk-XVnP66274d86ccc3b5224',
//       );

//       if (response.statusCode == 200) {
//         final jsonData = json.decode(response.toString());
//         final List<dynamic> data = jsonData['data'];
//         List<PlantModels> plantList = [];
//         for (var plantData in data) {
//           PlantModels plant = PlantModels.fromJson(plantData);
//           plantList.add(plant);
//         }
//         return plantList;
//       } else {
//         throw Exception(
//             'Error fetching plant data: Status code ${response.statusCode}');
//       }
//     } catch (error) {
//       throw Exception('Error fetching plant data: $error');
//     }
//   }
// }

// // Example usage in your widget
// class PlantServiceTest extends StatefulWidget {
//   const PlantServiceTest({super.key});

//   @override
//   State<PlantServiceTest> createState() => _PlantListWidgetState();
// }

// class _PlantListWidgetState extends State<PlantServiceTest> {
//    late Future<List<PlantModels>> _futurePlantList;


//   @override
//   void initState() {
//     _futurePlantList = PlantApiService().fetchPlantData();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//   return Scaffold(
//       appBar: AppBar(
//         title: Text('Plant List'),
//       ),
//       body: FutureBuilder<List<PlantModels>>(
//         future: _futurePlantList,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           } else if (snapshot.hasError) {
//             return Center(
//               child: Text('Error: ${snapshot.error}'),
//             );
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return Center(
//               child: Text('No plant data available'),
//             );
//           } else {
//             return ListView.builder(
//               itemCount: snapshot.data!.length,
//               itemBuilder: (context, index) {
//                 final plant = snapshot.data![index];
//                 return ListTile(
//                   title: Text(plant.plantName),
//                   subtitle: Text(plant.scientificName.toString()),
//                   leading: Image.network(plant.defaultImage?.originalUrl ?? ''),
//                   // You can customize the list tile as needed
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
