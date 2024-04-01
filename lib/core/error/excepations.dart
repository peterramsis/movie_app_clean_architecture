import 'package:movies_clean/core/network/error_network_model.dart';

class ServerException implements Exception{
   final ErrorNetworkModel errorNetworkModel;

   ServerException({
     required this.errorNetworkModel
    });

}

class LocalException implements Exception{
  final String message;

  LocalException({
    required this.message
  });

}