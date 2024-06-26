import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/presentation/controllers/pet/pet_controller.dart';
import 'package:project/presentation/pages/home_page/widget/home_screen_appbar.dart';
import 'package:project/presentation/pages/home_page/widget/pet_grid_widget.dart';
import 'package:project/presentation/pages/home_page/widget/status_change_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<PetController>(
        builder: (petController) {
          return petController.petList.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : const SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        HomeScreenAppBar(),
                        StatusChangeContainer(),
                        PetGridView(),
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }
}
