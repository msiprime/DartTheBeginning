void main() {
  Car myCar = Car(drive: slowDrive);
  print(myCar.drive);
  myCar.drive = fastDrive;
  myCar.drive();
}

class Car {
  Function drive;

  Car({required this.drive});
}

void slowDrive() {
  print('Driving slowly');
}

void fastDrive() {
  print('Driving Blazing Fast');
}
