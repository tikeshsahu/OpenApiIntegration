import 'package:dartz/dartz.dart';
import 'package:openapi/openapi.dart';
import 'package:project/comman/enum.dart';
import 'package:project/comman/failure.dart';

abstract class PetRepository {
  Future<Either<Failure, List<Pet>>> getPetList(Status status);
  Future<Either<Failure,Map<String, int>>> getInventory();

}