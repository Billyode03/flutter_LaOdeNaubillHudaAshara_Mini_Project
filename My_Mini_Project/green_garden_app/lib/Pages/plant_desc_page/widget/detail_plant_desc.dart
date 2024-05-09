// import 'package:flutter/material.dart';
// import 'package:green_garden/Constant/text_constant.dart';
// import 'package:green_garden/models/plants_model.dart';

// class DetailPlantDecs extends StatelessWidget {
//   final PlantModel plant;
  
//   const DetailPlantDecs({super.key, required this.plant});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(30),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 1,
//             blurRadius: 3,
//             offset: Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Common Name: ${plant.commonName}',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 10),
//           Text(
//             'Scientific Name: ${plant.scientificName}',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 10),
//           Text(
//             'Other Names: ${plant.otherName.join(", ")}',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 10),
//           Text(
//             'Cycle: ${plant.cycle}',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 10),
//           Text(
//             'Watering: ${plant.watering}',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 10),
//           Text(
//             'Sunlight: ${plant.sunlight.join(", ")}',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );


//     //   return Column(
//     //     children: [
//     //       Container(
//     //         margin: EdgeInsets.symmetric(horizontal: 35),
//     //         child: Column(
//     //           children: [
//     //             Align(
//     //               alignment: Alignment.topLeft,
//     //               child: Text(
//     //                 'Description',
//     //                 style: TextStyleUsable.interRegularWhiteOne,
//     //               ),
//     //             ),
//     //             Text(
//     //                 'European Silver Fir (Abies alba) is an amazing coniferous species native to mountainous regions of central Europe and the Balkans. It is an evergreen tree with a narrow, pyramidal shape and long, soft needles. Its bark is scaly grey-brown and its branches are highly ornamental due to its conical-shaped silver-tinged needles. It is pruned for use as an ornamental evergreen hedging and screening plant, and is also popular for use as a Christmas tree. Young trees grow quickly and have strong, flexible branches which makes them perfect for use as windbreaks. The European Silver Fir is an impressive species, making it ideal for gardens and public spaces'),
//     //           ],
//     //         ),
//     //       ),
//     //     ],
//     //   );
//     // }

    
//   }
// }
