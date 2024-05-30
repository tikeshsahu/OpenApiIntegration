import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'dart:math' as math;

import 'package:project/comman/constant.dart';

class PetContainer extends StatelessWidget {
  const PetContainer({
    required this.pet,
    required this.index,
    super.key,
  });

  final Pet pet;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.green.withOpacity(0.3)), borderRadius: BorderRadius.circular(RADIUS)),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(RADIUS), topRight: Radius.circular(RADIUS)),
              child: Image.network(
                'https://placedog.net/640/4${index * 2}0?r',
                fit: BoxFit.fill,
                height: 200,
                width: MediaQuery.of(context).size.width,
              )),
          Container(
            decoration: BoxDecoration(color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(0.1), borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(RADIUS), bottomRight: Radius.circular(RADIUS))),
            width: double.infinity,
            child: Column(
              children: [
                Text(pet.name, style: const TextStyle(color: Colors.black, fontSize: 12)),
                Text(
                  pet.category?.name ?? '',
                  style: const TextStyle(color: Colors.black87, fontSize: 10),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
