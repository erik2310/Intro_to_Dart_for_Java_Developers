class Bicycle {
  // Deklarer int datatyper
  int cadence;
  int _speed = 0;
  int gear;

  // Constructor der sætter cadence og gear
  Bicycle(this.cadence, this.gear);

  // Getter til _speed
  int get speed => _speed;

  // Setter til _speed
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
  // Instantiere et bike objekt med klassen Bicycle, med cadence: 2 og gear: 1
  var bike = Bicycle(2, 1);

  // Udskriver bike objektet
  print(bike);

  // Kalder på speedUp metoden for at speede op
  bike.speedUp(1);

  // Udskriver bike objektet
  print(bike);

  // Kalder på applyBrake metoden for at bremse ned
  bike.applyBrake(1);

  // Udskriver bike objektet
  print(bike);
}
