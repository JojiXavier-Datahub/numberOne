import 'dart:io';
import 'dart:developer';
import 'dart:collection';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';
import 'package:number_one_academy_v2/Infrastrutcure/api_key.dart';
import 'package:number_one_academy_v2/Utils/Helper/shared_pref.dart';
import 'package:number_one_academy_v2/Domain/Core/api_endpoints.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Core/NetworkServices/network_services.dart';

@LazySingleton(as: NetworkService)
class NetworkHelper implements NetworkService {
  late Dio _dio;

  initializeInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (request, handler) {
        debugPrint(
            "${request.method} | ${request.path} | body--${request.data} | param--${request.queryParameters} | head---${request.headers}");
        return handler.next(request);
      },
      onResponse: (response, handler) {
        debugPrint(
            "${response.statusCode} | ${response.statusMessage} | ${response.data}");
        return handler.next(response);
      },
      onError: (error, handler) async {
        if (error.response?.statusCode == 401) {
          log("error is found in the token, it is expired");
          String newAccessToken = await retryToken();
          error.requestOptions.headers['Authorization'] =
              'Bearer $newAccessToken';
          init();
          return handler.resolve(await _dio.fetch(error.requestOptions));
        }
        return handler.next(error);
      },
    ));
  }

  Future<String> retryToken() async {
    log("retrytoken");
    final refreshToken = await SharedPrefUtil.getString('refresh_token');
    try {
      Response<dynamic> data = await Dio().post(ApiEndPoints.refreshToken,
          data: {"refreshToken": refreshToken});
      if (data.statusCode == 200 || data.statusCode == 201) {
        log('new access token reterived');
        String newToken = data.data['accessToken'];
        await SharedPrefUtil.writeString(accesToken, newToken.toString());
        return newToken;
      } else {
        return '';
      }
    } catch (e) {
      return '';
    }
  }

  @override
  void init() async {
    HashMap<String, String> headers = HashMap();
    final hasToken = await SharedPrefUtil.contains(accesToken);
    final token = hasToken ? await SharedPrefUtil.getString(accesToken) : "";
    headers[HttpHeaders.authorizationHeader] = "Bearer $token";
    headers[HttpHeaders.acceptHeader] = "application/json";
    headers[HttpHeaders.contentTypeHeader] = "application/json";
    _dio = Dio(BaseOptions(baseUrl: baseUrl, headers: headers));
    initializeInterceptors();
  }

  @override
  Future<Either<MainFailure, Response>> getRequest(String url,
      [Map<String, dynamic>? queryParameters]) async {
    Either<MainFailure, Response> result;
    try {
      result = _returnResponse(
          await _dio.get(url, queryParameters: queryParameters));
    } catch (e) {
      if (e is DioException) {
        if (e.type == DioExceptionType.connectionError) {
          result = left(const MainFailure.networkFailure());
        }
        if (e.error is SocketException) {
          result = left(const MainFailure.clientFailure());
        } else if (e.response != null) {
          result = left(
              MainFailure.serverFailure(e.response!.statusMessage.toString()));
        } else {
          result = left(const MainFailure.serverFailure());
        }
      } else {
        result = left(const MainFailure.serverFailure());
      }
    }
    return result;
  }

  @override
  Future<Either<MainFailure, Response>> postRequest(
      String url, dynamic body) async {
    Either<MainFailure, Response> result;
    try {
      result = _returnResponse(await _dio.post(url, data: body));
    } catch (e) {
      if (e is DioException) {
        if (e.type == DioExceptionType.connectionError) {
          result = left(const MainFailure.networkFailure());
        }
        if (e.error is SocketException) {
          result = left(const MainFailure.clientFailure());
        } else {
          if (e.response != null) {
            result = _returnResponse(e.response!);
          } else {
            result = left(const MainFailure.serverFailure());
          }
        }
      } else {
        result = left(const MainFailure.serverFailure());
      }
    }
    return result;
  }

  @override
  Future<Either<MainFailure, Response>> putRequest(
      String url, Map<String, dynamic> body) async {
    Either<MainFailure, Response> result;
    try {
      result = _returnResponse(await _dio.put(url, data: body));
    } catch (e) {
      if (e is DioException) {
        if (e.type == DioExceptionType.connectionError) {
          result = left(const MainFailure.networkFailure());
        }
        if (e.error is SocketException) {
          result = left(const MainFailure.clientFailure());
        } else {
          if (e.response != null) {
            result = _returnResponse(e.response!);
          } else {
            result = left(const MainFailure.serverFailure());
          }
        }
      } else {
        result = left(const MainFailure.serverFailure());
      }
    }
    return result;
  }

  @override
  Future<Either<MainFailure, Response>> multipartRequest(
      String url, FormData body) async {
    Either<MainFailure, Response> result;
    try {
      result = _returnResponse(await _dio.post(url, data: body));
    } on SocketException {
      result = left(const MainFailure.clientFailure());
    } catch (e) {
      if (e is DioException) {
        if (e.type == DioExceptionType.connectionError) {
          result = left(const MainFailure.networkFailure());
        }
        if (e.error is SocketException) {
          result = left(const MainFailure.clientFailure());
        } else if (e.response != null) {
          result = left(
              MainFailure.serverFailure(e.response!.statusMessage.toString()));
        } else {
          result = left(const MainFailure.serverFailure());
        }
      } else {
        result = left(const MainFailure.serverFailure());
      }
    }
    return result;
  }

  Either<MainFailure, Response> _returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return right(response);
      case 201:
        return right(response);
      case 400:
        return left(MainFailure.badRequestException(response.data.toString()));
      case 401:
        var responseJson = response.data;
        return left(MainFailure.unAuthorisedException(
            responseJson["message"].toString()));
      case 403:
        var responseJson = response.data;
        return left(MainFailure.unAuthorisedException(
            responseJson["message"].toString()));
      case 503:
        return left(const MainFailure.networkFailure());
      case 500:
      default:
        return left(MainFailure.serverFailure(
            "Error occurred while communication with server with status code : ${response.statusCode}"));
    }
  }
}
