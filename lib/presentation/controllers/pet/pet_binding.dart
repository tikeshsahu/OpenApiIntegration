

import 'package:get/get.dart';
import 'package:project/data/datasource/pet_repository_impl.dart';
import 'package:project/domain/repositories/pet_repository.dart';
import 'package:project/domain/usecases/get_petlist.dart';
import 'package:project/presentation/controllers/pet/pet_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetPetList(Get.find<PetRepositoryImpl>() as PetRepository));
    Get.put(PetController(Get.find()), permanent: true);
  }
}