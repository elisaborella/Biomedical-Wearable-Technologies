import "Bus.dart";
import 'Vehicle.dart';

void main(List<String> args){
  Vehicle auto = Vehicle(is_moving: false, mileage: 0);
  Vehicle moto = Vehicle.used(mileage: 100);
  Bus bus1 = Bus(mileage: 0, is_moving:false, current_number_of_passengers: 0);
  Bus bus2 = Bus.use(mileage: 140, current_number_of_passengers: 10);

  print(bus1.toString());
  print(bus2.toString());

  bus1.start();
  bus2.stop();

  print(bus2.add_mileage(1000));

  print(bus1.toString());
  print(bus2.toString());

  /*print(auto.toString());
  print(moto.toString());

  auto.stop();
  moto.start();

  print(auto.add_mileage(150));

  print(auto.toString());
  print(moto.toString());*/
}