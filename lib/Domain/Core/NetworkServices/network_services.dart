import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';

abstract class NetworkService {
  void init();

  Future<Either<MainFailure, Response>> getRequest(String url,
      [Map<String, dynamic>? queryParameters]);

  Future<Either<MainFailure, Response>> postRequest(
      String url, dynamic body);
       Future<Either<MainFailure, Response>> putRequest(
      String url, Map<String, dynamic> body);

  Future<Either<MainFailure, Response>> multipartRequest(
      String url, FormData body);
}
