import 'package:equatable/equatable.dart';
import 'package:travelapp/models/destination_model.dart';

class TrasactionModel extends Equatable {
  final DestinationModel destination;
  final int traveler;
  final String seat;
  final bool refundable;
  final bool insurence;
  final double vat;
  final int price;
  final double total;

  const TrasactionModel({
    required this.destination,
    this.traveler = 0,
    this.seat = "",
    this.refundable = false,
    this.insurence = false,
    this.vat = 0 ,
    this.price = 0,
    this.total = 0,
  });


  @override
  // TODO: implement props
  List<Object?> get props => [
    destination,
    traveler,
    seat,
    refundable,
    insurence,
    vat,
    price,
    total,
  ];
  
}