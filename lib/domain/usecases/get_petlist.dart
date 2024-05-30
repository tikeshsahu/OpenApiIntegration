import 'package:dartz/dartz.dart';
import 'package:openapi/openapi.dart';
import 'package:project/comman/enum.dart';
import 'package:project/comman/failure.dart';
import 'package:project/domain/repositories/pet_repository.dart';

class GetPetList {
  GetPetList(this._repository);
  final PetRepository _repository;

  Future<Either<Failure, List<Pet>>> getPetListUsecase(Status status) async {
    return await _repository.getPetList(status);
  }

  Future<Either<Failure,Map<String, int>>> getInventoryUseCase() async {
    return await _repository.getInventory();
  }
}