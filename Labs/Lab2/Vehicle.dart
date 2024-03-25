class Vehicle {
  // --- Instance variables
  final double max_speed = 300;
  bool? is_moving;
  int? mileage;

  // --- Constructors
  Vehicle({this.is_moving, this.mileage});
  Vehicle.used({this.is_moving = false, this.mileage});

  void start() {
    if(this.is_moving!)
      print("The vehicle was already moving");
    this.is_moving = true;
  }
  void stop() {
    if(!this.is_moving!)
      print("The vehicle was already stopped");
    this.is_moving = false;
  }

  String toString(){
    return "The max speed of the vehicle is ${this.max_speed} \n The vehicle has made ${this.mileage} \n The vehicle is${this.is_moving! ? "" : " not"} moving";
  }

  int add_mileage(int mileage){
    this.mileage = this.mileage! + mileage;
    return this.mileage!;
  }
}