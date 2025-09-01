import 'package:equatable/equatable.dart';


class ServicesModel extends Equatable
{
  const ServicesModel({
    required this.serviceImg, 
    required this.serviceName, 
    required this.serviceScreen});

  final String serviceImg;
  final String serviceName;
  final String serviceScreen;
  
  @override
  List<Object?> get props => [
    serviceImg, serviceName, serviceScreen
  ];
}