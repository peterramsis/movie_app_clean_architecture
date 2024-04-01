import 'package:equatable/equatable.dart';


class ErrorNetworkModel extends Equatable{
  final int statusCode;
  final bool success;
  final String statusMessage;

  const ErrorNetworkModel({required this.statusCode,required this.success,required this.statusMessage});

  factory ErrorNetworkModel.fromJson(Map<String , dynamic> json) {
    return ErrorNetworkModel(statusCode: json['status_code'], success: json["success"], statusMessage: json["statusMessage"]);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    statusMessage,
    success,
    statusCode
  ];
}