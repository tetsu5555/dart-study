class Bicycle {
  int cadence;
  // _をつけるとread-onlyになる
  // Library privacy generally means that the identifier is visible only inside the file (not just the class) that the identifier is defined in.
  int _speed = 0;
  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
}

void main() {
  final bike = Bicycle(2, 1);
  assert(bike.speed == 0);
  print(bike);

  bike.speedUp(20);
  assert(bike.speed == 20);
  print(bike);

  bike.applyBrake(10);
  assert(bike.speed == 10);
  print(bike);
}