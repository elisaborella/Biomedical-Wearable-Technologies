import 'dart:ffi';

import 'Vehicle.dart';

class Bus extends Vehicle{
  int? current_number_of_passengers;
  final int max_number_of_passengers = 20;

  Bus({mileage, is_moving, this.current_number_of_passengers = 0}) : super(mileage: mileage, is_moving: is_moving);
  Bus.use({mileage, this.current_number_of_passengers = 0}) : super(mileage: mileage);

  int board(int passengers){
    current_number_of_passengers = current_number_of_passengers! + passengers;
    return current_number_of_passengers!;
  }

  String toString(){
    return "${super.toString()} \n The current number of passengers in the bus is ${current_number_of_passengers} \n The capacity of the bus is ${max_number_of_passengers}";
  }
}