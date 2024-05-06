import 'package:flutter/material.dart';
import 'package:green_garden/Constant/text_constant.dart';

class DetailPlantDecs extends StatelessWidget {
  const DetailPlantDecs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Description',
                  style: TextStyleUsable.interRegularWhiteOne,
                ),
              ),
              Text(
                  'European Silver Fir (Abies alba) is an amazing coniferous species native to mountainous regions of central Europe and the Balkans. It is an evergreen tree with a narrow, pyramidal shape and long, soft needles. Its bark is scaly grey-brown and its branches are highly ornamental due to its conical-shaped silver-tinged needles. It is pruned for use as an ornamental evergreen hedging and screening plant, and is also popular for use as a Christmas tree. Young trees grow quickly and have strong, flexible branches which makes them perfect for use as windbreaks. The European Silver Fir is an impressive species, making it ideal for gardens and public spaces'),
            ],
          ),
        ),
      ],
    );
  }
}
