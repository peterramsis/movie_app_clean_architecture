import 'package:movies_clean/core/network/error_network_model.dart';

class ServerException implements Exception{
   final ErrorMessageModel  errorMessageModel;

   ServerException({
     required this.errorMessageModel
    });

}

class LocalException implements Exception{
  final String message;

  LocalException({
    required this.message
  });

}